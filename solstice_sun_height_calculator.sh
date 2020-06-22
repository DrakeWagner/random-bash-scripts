#!/bin/bash

# A calculator to show the height of the Sun during the summer and winter solstices, 
# depending on your latitude

echo "Enter your latitude: "
read lat
ssheight=$((90-lat+23))
echo "Summer solstice peak altitude of Sun: $ssheight"
wsheight=$((90-lat-23))
echo "Winter solstice peak altitude of Sun: $wsheight"

