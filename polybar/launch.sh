#!/bin/bash

# poweroff all polybars
killall -q polybar

# wait while all polybars are going poweroff
while pgrep -x polybar;
do
    sleep 1;
done

Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)
file=~/.config/de/polybar/param.ini

echo "[param]" > $file
if (($Xaxis == 1920)); then
	echo "border-size = 700" >> $file
fi
if (($Xaxis == 1366)); then
	echo "border-size = 200" >> $file
fi

# launch polybars
polybar -c ~/.config/de/polybar/config.ini colorfil &
sleep 1
polybar -c ~/.config/de/polybar/config.ini panel

