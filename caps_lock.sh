#!/bin/bash

# Number of times to toggle Caps Lock
TOGGLE_COUNT=9999999999999999999999999999999999999

for ((i=1; i<=TOGGLE_COUNT; i++))
do
  # Toggle Caps Lock key
  xdotool key Caps_Lock
 
  # Wait for a random time between 0.2 to 1.5 seconds
  sleep_time=$(awk -v min=0.2 -v max=1.5 'BEGIN{srand(); print min+rand()*(max-min)}')
  sleep $sleep_time
done



