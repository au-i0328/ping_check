#!/bin/bash

while true; do
    if ! ping -c 1 -W 1 8.8.8.8 > /dev/null; then
        while ! ping -c 1 -W 1 8.8.8.8 > /dev/null; do
            beep -f 882 -l 200   # 882 Hz, 200 ms
        done
    fi
    sleep 15
done
