#!/bin/bash

case "$1" in
    up)
        brightnessctl set +10%
        ;;
    down)
        brightnessctl set 10%-
        ;;
    *)
        echo $(brightnessctl g) | grep -oE '[0-9]+'
        ;;
esac
