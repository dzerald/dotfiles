#!/bin/sh

updates_count=$(checkupdates | wc -l)

if (( $updates_count == 1 ))
then
  notify-send "$updates_count update available"
  echo "󰚰"
elif (( $updates_count > 1 ))
then
  notify-send "$updates_count updates available"
  echo "󰚰"
else
  exit 1
fi
