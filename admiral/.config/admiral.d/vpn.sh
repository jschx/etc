#!/usr/bin/env dash
# vpn.sh - output vpn status

. ~/.config/lime/colors.conf

proc='openvpn'

if [ "$(pgrep ${proc})" ]; then
	vpn="%{F$c2}[vpn]"
else
	vpn="%{F$c1}[vpn]"
fi

echo "%{B-}${vpn}"
