#!/usr/bin/env bash
# ewmh_workspaces.sh - output workspaces

. ~/.config/lime/colors.conf

while read -r line; do
#	for workspace in $(jot $(xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}')); do
	for workspace in 1 2 3 4; do
		if [ "$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')" = "$(( workspace - 1 ))" ]; then
			echo -n "%{B-}%{F$c7} ${workspace} %{B-}%{F-}"
		else
			echo -n "%{B-}%{F$c0} ${workspace} %{B-}%{F-}"
		fi
	done
	echo
done < <(xprop -root -spy)
