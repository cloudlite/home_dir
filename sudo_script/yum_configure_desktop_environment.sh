#!/usr/bin/env bash

if [ -n "$EXTENDED_BOOTSTRAP" ]; then
  yum_cmd=`\which yum 2> /dev/null`;
  if [ -n "$yum_cmd" ]; then
    $yum_cmd groupinstall -y \
      "X Window System" \
      "Fonts";

    $yum_cmd install -y \
      firefox \
      gnome-terminal \
      xmonad;
  fi
fi
