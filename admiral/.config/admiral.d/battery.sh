#!/usr/bin/env dash
# battery.sh - output battery info

. ~/.config/lime/colors.conf

batpercent="$(apm -l)"
batstatus="$(apm -b)"

if [ "${batstatus}" = '0' ]; then
	battery="%{F$c2}${batpercent}%"
elif [ "${batstatus}" = '1' ]; then
	battery="%{F-}${batpercent}%"
else
	battery="%{F$c1}${batpercent}%"
fi

echo "%{B-}${battery}"
