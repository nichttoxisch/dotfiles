#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -z "$DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
  exec startx
fi

PS1='$(rc=$?; if ((rc==0)); then printf "\[\e[32m\]%d\[\e[0m\]" "$rc"; else printf "\[\e[31m\]%d\[\e[0m\]" "$rc"; fi) \[\e[34m\]\w λ \[\e[0m\]'

alias ls='eza --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -la'
alias grep='rg --color=auto'
alias date='date "+%a %Y-%m-%d %H:%M:%S"'

export MANPAGER="$HOME/dotfiles/manpager"
export EDITOR=nvim
export PATH="$PATH:/home/nichttoxisch/.spicetify"
