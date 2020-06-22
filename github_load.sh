#!/bin/bash

# opens my github on google chrome (or chromium on the raspberrypi ;) )


if [ ! -x "$(command -v chromium-browser)" ];
then
  echo "chromium is NOT installed. trying chrome..." >&2
  google-chrome https://github.com/DrakeWagner

  if [ ! -x "$(command -v chrome-browser)" ];
  then
    echo "success!"
  else
    echo "failed to run chrome."
  fi

else
  echo "chromium is installed. Running through chromium..."
  chromium-browser https://github.com/DrakeWagner
fi
