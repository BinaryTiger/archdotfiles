#!/bin/sh
sh ~/scripts/wal.sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# No keyboard beeping
xset b off

exec i3
