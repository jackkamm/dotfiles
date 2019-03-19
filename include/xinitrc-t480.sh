# Xorg config for Thinkpad T480
# source this from ~/.xinitrc

# increase trackpoint acceleration speed
#xinput set-prop "TPPS/2 IBM TrackPoint" 299 1

# replace trackpad middle click
# https://www.linuxquestions.org/questions/linux-newbie-8/how-to-disable-middle-click-button-on-etps-2-elantech-touchpad-4175619712/
xinput set-button-map "SynPS/2 Synaptics TouchPad" 1 1 3 4 5 6 7
