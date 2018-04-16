alias spotify="spotify --force-device-scale-factor=2"
alias openvpn="sudo openvpn --writepid /var/run/openvpn.pid --config"
alias feh="feh --keep-zoom-vp"
alias open="mimeopen"
alias warband="wine '/home/jack/.wine/drive_c/Program Files (x86)/Mount Blade Warband/mb_warband.exe'"
alias cambridge-up="sudo ipsec up CAM"
alias cambridge-down="sudo ipsec down CAM"
alias cambridge-restart="sudo ipsec restart CAM"
alias nm-restart="sudo systemctl restart NetworkManager.service"
alias i3lock="i3lock -c 000000"

# replace Gnome/Gtk apps with KDE/Qt apps
# for better integration with i3+hidpi
#alias gimp="krita"
#alias nautilus="dolphin"

#emacs () {
#    /usr/bin/emacsclient -c $* || /usr/bin/emacs $*
#}
alias emacs="emacsclient -c -a '/bin/emacs'"
