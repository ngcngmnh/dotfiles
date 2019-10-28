#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
if type "xrandr" > /dev/null; then
        xrandr --output eDP1 --primary --mode 1920x1080 --rotate normal --output HDMI1 --mode 1366x768 --rotate left --right-of eDP1 &
        polybar -c ~/.config/polybar/config.ini top &
        polybar -c ~/.config/polybar/config.ini bottom &
else
        polybar -c ~/.config/polybar/config.ini top &
        polybar -c ~/.config/polybar/config.ini bottom &
fi
