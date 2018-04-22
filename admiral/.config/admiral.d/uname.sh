#!/usr/bin/env dash
# uname.sh - output uname

. ~/.config/lime/colors.conf

uname="$(uname -s)"
version="$(sysctl -n kern.version | awk '{print $2}')"

echo "%{B-}%{F-}${uname} ${version}"
