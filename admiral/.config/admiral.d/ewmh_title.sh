#!/usr/bin/env bash
# ewmh_title.sh - output current window title

. ~/.config/lime/colors.conf

while read -r line; do
	winid="$(xprop -root _NET_ACTIVE_WINDOW | grep -o "0x.*")"
	if [ "${winid}" = '0x0' ]; then
		title=''
	else
		title="$(xprop -id "${winid}" WM_NAME | grep -o "\".*\"" | tr -d '"')"
	fi
	if [ "${#title}" -ge 61 ]; then
		title="$(echo ${title} | cut -c-61)..."
	fi
	echo "%{B-}%{F$c7}${title}"
done < <(xprop -root -spy)
