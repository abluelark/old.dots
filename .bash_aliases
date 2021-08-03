#!/usr/bin/env bash

# Convenience
alias c='clear'
alias h='history'
alias e='exit'
alias upgrade='sudo pacman -Syyuu'
# alias src='source ~/.bashrc'
alias src='source ~/.zshrc'
alias shutdown='poweroff'
alias apts='apt-cache search'
alias networks='nmcli dev wifi'
alias wifion='nmcli radio wifi on'
alias wifioff='nmcli radio wifi off'
alias commit='git commit -m "fullsalvo update"'
alias dir='pwd'
alias rm='rm -I'
alias ..="cd .."
alias unstow="stow -D"
alias x="startx"
alias fdisk="sudo fdisk"
alias pt="sudo powertop"

# Applications/Tools
alias fsch='feh -. --zoom fill -g 1280x720'
alias music='ncmpcpp'
alias cupd='xrdb ~/.Xresources'
alias scrot='maim --format png /home/gandalf/Pictures/Screenshots/$(date "+%y-%b-%d_%H%M%S").png -b 3 -n -c 0.4,0.4,0.4'
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias mpv='mpv --geometry 1280x720'
alias peaclock="peaclock --config-dir ~/.config/peaclock"
alias tmatrix="tmatrix -s 15"
alias discord="TERM=xterm cordless"
alias gatsby.sh="gatsby clean && gatsby develop && gatsby serve"
alias barb="bash ~/.config/polybar/launch.sh"

# Tizonia Shortcuts
alias art='tizonia --plex-audio-artist'
alias alb='tizonia --plex-audio-album'
alias tra='tizonia --plex-audio-tracks'
alias pla='tizonia --plex-audio-playlist'

# Fun
alias lc='lolcat'
alias fig='figlet'
alias info='/home/gandalf/.bin/info'
alias blocks='.bin/candy'
alias color='$HOME/.bin/colors'
alias block='$HOME/.bin/blocks'
alias wallview='.bin/wallview'
alias hex='$HOME/.bin/hex 16'
alias i3o='i3-msg open'
alias rotate='clear && schemes'
alias clock='termclock -af -ni -nm -nl -tf=%H:%M:%S'         

# Environment Variables
export WZK_ZNC_PASS="Sch00l"
export EDITOR="emacs"
export XDG_MUSIC_DIR=$HOME/Music
export RHISK_COMM='zenbu'

#renable audio
alias xr='xrandr --auto && sleep 4s && xrandr --auto && sleep 4s && xrandr --auto' 
alias external='xrandr --output HDMI1 --auto --right-of eDP1'

#package management
export aur='trizen'

#video display
alias dock='xrandr --output DP2-2 --auto --rotate left --right-of eDP1'

