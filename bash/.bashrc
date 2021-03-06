#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias vim='nvim'

PS1='[\u@\h \W]\$ '

# load powerline
if [ -f `which powerline-daemon` ]; then
     powerline-daemon -q
     POWERLINE_BASH_CONTINUATION=1
     POWERLINE_BASH_SELECT=1
fi
if [ -f /usr/lib/python3.10/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/lib/python3.10/site-packages/powerline/bindings/bash/powerline.sh
fi

neofetch
