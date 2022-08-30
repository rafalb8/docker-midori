#!/bin/sh

Xvnc -rfbauth $HOME/.vnc/passwd $DISPLAY -geometry 1280x720 &

sleep 2

dwm&

until midori && 0; do
    echo 'Midori closed, restaring.'
done