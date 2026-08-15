xrdb -merge ~/.Xresources
setxkbmap -layout de
slstatus &
xsetroot -solid "#212121"

if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment --systemd DISPLAY XAUTHORITY
fi

while true; do
	dwm 2> /tmp/dwm.log
done


