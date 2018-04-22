#!/usr/bin/env dash
# wm.sh - output window manager name

. ~/.config/lime/colors.conf

tail -n 1 "${HOME}"/.xinitrc | cut -d ' ' -f 2
