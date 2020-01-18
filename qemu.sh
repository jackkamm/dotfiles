#!/bin/bash
#
# example qemu hook script
# place in /etc/libvirt/hooks/qemu
# mainly copied from:
# https://github.com/PassthroughPOST/VFIO-Tools/blob/master/libvirt_hooks/hooks/cset.sh

TOTAL_CORES='0-7'
TOTAL_CORES_MASK=FF             # 0-7, bitmask 0b11111111
HOST_CORES='0,1'                # Cores reserved for host
HOST_CORES_MASK=11              # 0,4, bitmask 0b00000011
VIRT_CORES='2-7'            # Cores reserved for virtual machine(s)

VM_NAME="$1"
VM_ACTION="$2"

function shield_vm() {
    cset -m set -c $TOTAL_CORES -s machine.slice
    cset -m shield --kthread on --cpu $VIRT_CORES
}

function unshield_vm() {
    cset -m shield --reset
}

# For convenient manual invocation
if [[ "$VM_NAME" == "shield" ]]; then
    shield_vm
    exit
elif [[ "$VM_NAME" == "unshield" ]]; then
    unshield_vm
    exit
fi

if [[ "$VM_NAME" == "win10-2" ]]; then
    echo "Apply optimizations"
else
    echo "Skipping optimizations"
    exit 0
fi

if [[ "$VM_ACTION" == "prepare" ]]; then
    echo "libvirt-qemu cset: Reserving CPUs $VIRT_CORES for VM $VM_NAME" > /dev/kmsg 2>&1
    shield_vm > /dev/kmsg 2>&1

    # the kernel's dirty page writeback mechanism uses kthread workers. They introduce
    # massive arbitrary latencies when doing disk writes on the host and aren't
    # migrated by cset. Restrict the workqueue to use only cpu 0.
    echo $HOST_CORES_MASK > /sys/bus/workqueue/devices/writeback/cpumask
    echo 0 > /sys/bus/workqueue/devices/writeback/numa

    echo "libvirt-qemu cset: Successfully reserved CPUs $VIRT_CORES" > /dev/kmsg 2>&1
elif [[ "$VM_ACTION" == "release" ]]; then
    echo "libvirt-qemu cset: Releasing CPUs $VIRT_CORES from VM $VM_NAME" > /dev/kmsg 2>&1
    unshield_vm > /dev/kmsg 2>&1

    # Revert changes made to the writeback workqueue
    echo $TOTAL_CORES_MASK > /sys/bus/workqueue/devices/writeback/cpumask
    echo 1 > /sys/bus/workqueue/devices/writeback/numa

    echo "libvirt-qemu cset: Successfully released CPUs $VIRT_CORES" > /dev/kmsg 2>&1
fi
