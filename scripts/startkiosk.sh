#!/usr/bin/env bash

# disable DPMS (Energy Star) features.
xset -dpms

# disable screen saver
xset s off

# don't blank the video device
xset s noblank

# disable mouse pointer
# unclutter -idle 0 -root &
unclutter &

# run window manager
# matchbox-window-manager -use_cursor no -use_titlebar no  &

# run chromuim
chromium-browser $1 --noerrdialogs --no-first-run --start-fullscreen --window-size=1920,1080 --disable-translate
#--kiosk
#--incognito
#--window-size=1920,1080
#--start-fullscreen 
#--disable-translate
#--no-first-run
#--fast
#--fast-start 
#--disable-infobars 
#--disable-features=TranslateUI 
#--disk-cache-dir=/dev/null

if [ $# -ne 0 ];
then
  chromium-browser --noerrdialogs --kiosk --incognito $1
else
  chromium-browser --noerrdialogs --incognito https://www.google.co.kr/
fi
