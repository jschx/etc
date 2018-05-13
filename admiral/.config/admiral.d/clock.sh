#!/usr/bin/env dash
# clock.sh - output time and date

. ~/.config/lime/colors.conf

clock="$(date +"%m/%d %I:%M %p")"

echo "%{B-}%{F-}${clock}"
