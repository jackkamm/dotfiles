
function xrdb-urxvt {
    xrdb -merge "$1" && pkill -HUP urxvt
}
