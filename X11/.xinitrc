urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
x11vnc -bg -forever -usepw -xrandr -display :0
exec i3
