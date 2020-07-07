#!/usr/bin/env bash

WARNING_THRESHOLD=70
CRITICAL_THRESHOLD=90
TEMPERATURE=$(sensors | grep -oP 'Package.*?\+\K[0-9.]+')

if [ -z "$TEMPERATURE" ]; then
      echo "Cannot find temperature"
      exit 0
fi

echo "${TEMPERATURE}°C" # full text
echo "${TEMPERATURE}°C" # short text

# color
if [ "`echo "${TEMPERATURE} >= ${CRITICAL_THRESHOLD}" | bc`" -eq 1 ]; then
    echo "#FF0000"
elif [  "`echo "${TEMPERATURE} >= ${WARNING_THRESHOLD}" | bc`" -eq 1 ]; then
    echo "#FFFF00"
fi

exit 0
