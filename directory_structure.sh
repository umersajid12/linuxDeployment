#!/bin/sh

# Linux
wget=/usr/bin/wget

WORKING_DIR="/home/umar/gitOpen/linuxDeployment"
TMP_DIR="/home/umar/gitOpen/linuxDeployment/tmp"

if [ ! -x "$wget" ]; then
  echo "ERROR: No wget." >&2
  exit 1
fi
if ! cd "$TMP_DIR"; then
  echo "ERROR: can't access working directory ($WORKING_DIR)" >&2
  echo "Going to make new tmp Directory now" >&2
  mkdir -p "$TMP_DIR"
else 
  echo "directory exists and exiting" >&2
  exit 1
fi
