#!/bin/sh

# Stupid font things
xset +fp /home/gandalf/.fonts
xset fp rehash

# Make X Terminal Emulator terms not ugly
xrdb ~/.Xresources

# MPD
#sleep 2 && (
#	mpd
#	mpdscribble
#	$HOME/.bin/mpd-notify-daemon &
#) &

#wal colorscheme autostart
wal -i "$(< "${HOME}/.cache/wal/wal")"

# Load into a wm
defaultwm=i3
case "$1" in
	*)
		exec $defaultwm ;;
esac
