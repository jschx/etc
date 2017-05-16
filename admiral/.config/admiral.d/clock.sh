#!/usr/bin/env dash
# clock.sh - output clock

. ~/.config/lime/colors.conf

clock="$(date +'%A, %b %e %l:%M %p')"
echo "%{B-}%{F-}${clock}"
