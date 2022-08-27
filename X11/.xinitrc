urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
# Run x11vnc for remode display
x11vnc -bg -forever -usepw -xrandr -display :0
# Making caps lock key dual function
setxkbmap -option 'caps:ctrl_modifier'; xcape -e 'Caps_lock=Escape'&
exec i3
