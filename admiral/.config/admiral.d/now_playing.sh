#!/usr/bin/env dash
# now_playing.sh - output cmus's currently playing artist and song

. ~/.config/lime/colors.conf

if [ "$(pgrep cmus)" ]; then
	artist="$(cmus-remote -Q | grep 'tag artist' | sed 's/tag artist //')"
	title="$(cmus-remote -Q | grep 'tag title' | sed 's/tag title //')"
	echo "%{B-}%{F-}${artist} - ${title}"
fi
