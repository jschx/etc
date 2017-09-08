#!/usr/bin/env dash
# now_playing.sh - display currently playing artist and song

if [ "$(pgrep cmus)" ]; then
	artist="$(cmus-remote -Q | grep artist | sed 's/tag artist //')"
	title="$(cmus-remote -Q | grep title | sed 's/tag title //')"
	echo "%{B-}%{F-}${artist} - ${title}"
else
	echo "%{B-}%{F-}stopped"
fi
