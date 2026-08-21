xrdb -merge ~/.Xresources
setxkbmap -layout de
slstatus &
xwallpaper --zoom ~/dotfiles/wallpaper/output.jpeg
xrandr --output HDMI-0 --mode 1920x1080 --rate 71.91

if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment --systemd DISPLAY XAUTHORITY
fi

export QT_QPA_PLATFORMTHEME=qt6ct
export QT_STYLE_OVERRIDE=BreezeDark

picom --backend xrender &
exec dbus-run-session -- dwm


