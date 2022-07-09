#!/bin/bash

killall -q polybar
polybar -c ~/.config/de/polybar/config leonid 2>&1 | tee -a /tmp/polybar.log & disown

