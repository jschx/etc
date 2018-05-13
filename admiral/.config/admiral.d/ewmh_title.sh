#!/usr/bin/env dash
# ewmh_title.sh - output current window title

. ~/.config/lime/colors.conf

winid="$(xprop -root _NET_ACTIVE_WINDOW | grep -o "0x.*")"

if [ "${winid}" = '0x0' ]; then
	title=''
else
	title="$(xprop -id "${winid}" WM_NAME | grep -o "\".*\"" | tr -d '"')"
fi

if [ "${#title}" -gt 64 ]; then
	title="$(echo ${title} | cut -c -61)..."
fi

echo "%{B-}%{F-}${title}"
