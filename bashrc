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

PS1='$(rc=$?; if ((rc==0)); then printf "\[\e[32m\]%d\[\e[0m\]" "$rc"; else printf "\[\e[31m\]%d\[\e[0m\]" "$rc"; fi) \[\e[34m\]\w λ \[\e[0m\]'

# Support colors in less
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33;44m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;1;32m'
export LESS_TERMCAP_mr=$'\e[7m'
export LESS_TERMCAP_mh=$'\e[2m'
export LESS_TERMCAP_ZN=$'\e[74m'
export LESS_TERMCAP_ZV=$'\e[75m'
export LESS_TERMCAP_ZO=$'\e[73m'
export LESS_TERMCAP_ZW=$'\e[75m'

EDITOR=nvim

alias isync='rclone bisync iCloud: ~/iCloud --interactive'
