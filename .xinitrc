#!/bin/bash
# GTK dark theme
export GTK_THEME=Adwaita:dark
# Load .Xmodmap
#[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
# Load screen settings
[[ -f /home/archie/.screenlayout/default.sh ]] && sh /home/archie/.screenlayout/default.sh
# Wallpaper
[[ -f /home/archie/Downloads/wp.png ]] && xwallpaper --center /home/archie/Downloads/wp.png
# Keyboard layout
setxkbmap -layout se
while xsetroot -name "`date +'%a %b %d %R %Y'` BAT`acpi | awk -F"," '{print $2}'` CPU `top -bn1 | head | awk 'FNR == 3 {print 100-$8}'`% Disk: `df -h | grep -e "29G" | awk '{ print $4 }'`"
do 
    sleep 3
done &
exec dwm
