#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  IFS=$'\n'
  for m in $(xrandr --query | grep " connected"); do
    if [[ $m = *primary* ]]; then
      MONITOR=$(echo $m | cut -d" " -f1) polybar --reload bottom_main &
    else
      MONITOR=$(echo $m | cut -d" " -f1) polybar --reload bottom &
    fi
  done
else
  polybar --reload example &
fi

echo "Bars launched..."
