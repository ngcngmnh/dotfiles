#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#xrandr --output eDP1 --primary --mode 1920x1080 --rotate normal --output HDMI1 --mode 1366x768 --rotate left --right-of eDP1

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

#xsetroot -cursor_name left_ptr &
killall -q sxhkd
while pgrep -u $UID -x sxhkd >/dev/null; do sleep 1; done
sxhkd &
#killall -q conky
#conky -c $HOME/.config/bspwm/system-overview &
#run variety &
#run nm-applet &
#run pamac-tray &
#run xfsettingsd &
#run xfce4-power-manager &
#run xfce4-clipman &
#numlockx on &
#blueberry-tray &
compton --dbus --config $HOME/.config/bspwm/compton.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &
killall -q dunst
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done
dunst &
nitrogen --restore &
xinput set-prop "ELAN1200:00 04F3:303E Touchpad" "libinput Tapping Enabled" 1 &
killall -q redshift
while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
redshift -t 6500:3750 -b 1.0:0.9 -r -l 10.80:106.70 &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &


#########
touchpad_status=$(cat ~/.config/sxhkd/scripts/touchpad-status)
if [ "$touchpad_status" == 'off' ]
then
     xinput disable "ELAN1200:00 04F3:303E Touchpad"
else
     xinput enable "ELAN1200:00 04F3:303E Touchpad"
fi

