#!/usr/bin/env bash

adjustBrightness() {
    brightness=$(($(xfpm-power-backlight-helper --get-brightness) + $1))
    if (( $brightness < 0 )); then
        brightness=0
    fi

    pkexec xfpm-power-backlight-helper --set-brightness=$brightness
    notify-send -t 1000 "Brightness: $(xfpm-power-backlight-helper --get-brightness)"
}

case "$1" in
    +)
        adjustBrightness 10000
        ;;
    -)
        adjustBrightness -10000
        ;;
esac
