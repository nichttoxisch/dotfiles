xrdb -merge ~/.Xresources
setxkbmap -layout de
slstatus &
xwallpaper --zoom ~/dotfiles/wallpaper/output.jpeg
xrandr --output HDMI-0 --mode 1920x1080 --rate 71.91

pipewire &

picom --backend xrender &
exec dbus-run-session -- dwm


