#!/bin/sh

# hdmi audio on thinkpad
pactl set-card-profile 0 output:hdmi-stereo-extra1

# default audio on thinkpad
# pactl set-card-profile 0 output:analog-stereo

# list outputs
# pactl list

# the output of "pactl list" is not very friendly, some tips for searching it:
# search for "avilable:yes"
# search for "output:hdmi"
# cross-reference against the list in pavucontrol "Configuration" tab
