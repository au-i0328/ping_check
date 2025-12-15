#!/bin/bash

# Requires sox installed: brew install sox

while true; do
    if ! ping -c 1 -W 1 8.8.8.8 > /dev/null; then
        echo "Connection failed!"
        # Play continuous 882 Hz square wave until ping succeeds
        while ! ping -c 1 -W 1 8.8.8.8 > /dev/null; do
            play -n synth 0.2 square 882
        done
        echo "Connection restored!"
    fi
    sleep 5
done
