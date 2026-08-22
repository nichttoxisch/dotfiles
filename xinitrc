xrdb -merge ~/.Xresources
setxkbmap -layout de
slstatus &
xwallpaper --zoom ~/dotfiles/wallpaper/output.jpeg
xrandr --output HDMI-1 --mode 1920x1080 --rate 71.91

if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment --systemd DISPLAY XAUTHORITY
fi

picom --backend xrender &
exec dbus-run-session -- dwm


