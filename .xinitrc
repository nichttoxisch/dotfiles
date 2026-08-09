xrdb -merge ~/.Xresources
setxkbmap de -variant mac
slstatus &
while true; do
	dwm 2> /tmp/dwm.log
done


