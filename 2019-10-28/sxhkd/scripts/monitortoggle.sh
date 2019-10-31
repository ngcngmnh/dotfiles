#!/bin/sh

backlight_status=$(xbacklight -get)

if [ "$backlight_status" == '0' ]
then
     restore=$(cat ~/.config/sxhkd/scripts/backlight-status)
     xbacklight -set $restore
else
     echo "$backlight_status" > ~/.config/sxhkd/scripts/backlight-status
        xbacklight -set 0
fi

