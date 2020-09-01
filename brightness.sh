#!/bin/bash

echo 'Set screen brightness (0-1): ' 
read level
xrandr --output eDP-1 --brightness $level
echo 'Screen brightness set to '$level
