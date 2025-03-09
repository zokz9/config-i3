#!/bin/bash
   # Получаем текущую раскладку
   CURRENT_LAYOUT=$(setxkbmap -query | grep layout | awk '{print $2}')

   # Меняем раскладку
   if [ "$CURRENT_LAYOUT" == "us" ]; then
       setxkbmap ru
       notify-send "RU"
   else
       setxkbmap us
       notify-send "US"
   fi
