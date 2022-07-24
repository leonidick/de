#!/bin/bash

# poweroff all polybars
killall -q polybar

# wait while all polybars are going poweroff
while pgrep -x polybar;
do
    sleep 1;
done

wait_polybar_opening()
{
    while ! pgrep -x polybar;
    do
        sleep 1;
    done
}

# launch polybars
polybar -c ~/.config/de/polybar/config.ini colorfil &
sleep 1

polybar -c ~/.config/de/polybar/config.ini main &
polybar -c ~/.config/de/polybar/config.ini panel

