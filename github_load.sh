#!/bin/bash

# opens my github on google chrome (or chromium on the raspberrypi ;) )

if ! [ -x "$(command -v chromium-browser)" ]; then
  echo "chromium is not installed." >&2
else echo "chromium is installed.""
fi
