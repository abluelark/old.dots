# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
SAVEHIST=2000
HISTFILE=~/.history

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Change the appearance of the prompt, if applicable
if [ -f $HOME/.prompt.sh ]; then
    . ~/.prompt.sh
fi

# Add user-created shell functions
if [ -f $HOME/.bash_functions ]; then
    . ~/.bash_functions
fi

# enable color support of ls and also add handy aliases

    eval $( dircolors -b $HOME/.dircolors )
    alias ls='ls --color'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'


# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias extract=~/.bin/extract
alias gd='cd ~/Documents'




# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#Add directories to $PATH

if [ -d $HOME/.bin ]; then
    export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"
fi

# Allow for bash autocompletion
autoload -U compaudit compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Remove homedir coredumps
ulimit -Sc 0

if [ -f ~/Dev/wz-utils/autocomplete ]; then
	. ~/Dev/wz-utils/autocomplete
fi

# mpd info
export MPD_HOST=0.0.0.0
export MPD_PORT=6667

# Use fzf in zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set the stow directory
export STOW_DIR="$HOME/dotfiles"

# Use zsh-autosuggestions
if [ -f $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
	. ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    fpath=(/home/fullsalvo/.zsh/zsh-completions/src $fpath)

fi



#ls
#eval $(dircolors -b $HOME/.dircolors)


#dir.colors
alias dir='dir --color'
#source ~/.bin/zsh-syntax-highlighting-filetypes.zsh

#Import colorscheme from 'wal'
(cat ~/.cache/wal/sequences &)


PATH=/home/gandalf/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/tools:/opt/android-sdk/tools/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/gandalf/.bin:/home/gandalf/.local/bin:/home/gandalf/.bin:/home/gandalf/.local/bin:/home/gandalf/.local/share/gem/ruby/3.0.0/bin
