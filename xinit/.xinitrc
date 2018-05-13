export GDK_SCALE='2'
export QT_SCALE_FACTOR='2'

xset fp+ /usr/local/share/fonts/adobe-source-code-pro/
xset fp+ /usr/local/share/fonts/adobe-source-sans-pro/
xset fp+ /usr/local/share/fonts/adobe-source-serif-pro/
xset fp+ /usr/local/share/fonts/ghostscript/
xset fp+ /usr/local/share/fonts/misc/
xset fp+ /usr/local/share/fonts/noto/
xset fp+ /usr/local/share/fonts/profont-x11/
xset fp+ /usr/local/share/fonts/ubuntu/

if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
	eval `dbus-launch --sh-syntax --exit-with-session`
fi

#display -window root ~/var/pictures/wallpapers/wallpaper.png &
lime &
sctd &
xbanish &
xmodmap ~/.xmodmaprc
xrandr --dpi 192
xset r rate 300 25
xsetroot -solid '#111111'

aucat -i ~/usr/oxp.wav &

exec cwm
