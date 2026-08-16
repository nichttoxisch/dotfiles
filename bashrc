#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
if [ -z "$DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
  exec startx
fi

alias ls='eza --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ll='ls -la'
alias xi='sudo xbps-install'
alias xq='xbps-query -Rs'
alias date='date "+%a %Y-%m-%d %H:%M:%S"'

export EDITOR=nvim
export PATH=$PATH:/home/nichttoxisch/.spicetify

PS1='$(rc=$?; if ((rc==0)); then printf "\[\e[32m\]%d\[\e[0m\]" "$rc"; else printf "\[\e[31m\]%d\[\e[0m\]" "$rc"; fi) \[\e[34m\]\w λ \[\e[0m\]'
