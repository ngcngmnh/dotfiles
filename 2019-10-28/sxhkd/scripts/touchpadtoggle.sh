#!/bin/sh

touchpad_status=$(cat ~/.config/sxhkd/scripts/touchpad-status)
#touchpad_status=$(xinput list-props "ELAN1200:00 04F3:303E Touchpad" | grep Device Enabled)	


if [ "$touchpad_status" == 'on' ]
then
     xinput disable "ELAN1200:00 04F3:303E Touchpad"
   echo "off" > ~/.config/sxhkd/scripts/touchpad-status
else
     xinput enable "ELAN1200:00 04F3:303E Touchpad"
   echo "on" > ~/.config/sxhkd/scripts/touchpad-status
fi

