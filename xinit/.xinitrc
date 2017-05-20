export GDK_SCALE=2
export QT_SCALE_FACTOR=2

xset fp+ /usr/local/share/fonts/adobe-source-code-pro/
xset fp+ /usr/local/share/fonts/adobe-source-sans-pro/
xset fp+ /usr/local/share/fonts/adobe-source-serif-pro/
xset fp+ /usr/local/share/fonts/ghostscript/
xset fp+ /usr/local/share/fonts/go/
xset fp+ /usr/local/share/fonts/noto/
xset fp+ /usr/local/share/fonts/profont/
xset fp+ /usr/local/share/fonts/terminus/

lime &
sctd &
xbanish &
xmodmap ~/.xmodmaprc
xrandr --dpi 192
xset r rate 300 25
xsetroot -solid '#222222'

aucat -i ~/usr/oxp.wav &

exec spectrwm
