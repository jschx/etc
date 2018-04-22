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

#display -window root ~/var/pictures/wallpapers/wallpaper.png &
lime &
sctd &
xbanish &
xmodmap ~/.xmodmaprc
xrandr --dpi 192
xset r rate 300 25
xsetroot -mod 8 8 -fg '#222222' -bg '#111111'

aucat -i ~/usr/oxp.wav &

exec cwm
