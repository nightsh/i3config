#!/bin/sh

STEP=5
UNIT="dB"   # dB, %, etc.
VOLUME=$(amixer get Master | grep "Playback.*\[.*%\]" | head -1 | awk '{print $5;}' | sed 's/\[\(.*\)%\]/\1/')
STATE=$(amixer get Master | grep 'Front Left:' | grep -o "\[off\]")
SETVOL="/usr/bin/amixer -qc 0 set Master"
DIRECTION=$1


case "$1" in
    "up")
          $SETVOL $STEP$UNIT+
          ;;
  "down")
          $SETVOL $STEP$UNIT-
          ;;
  "mute")
          $SETVOL toggle
          ;;
esac


# Show volume with volnoti
if [[ -n $STATE ]]; then
    volnoti-show $VOLUME
else
    volnoti-show -m
fi

exit 0
