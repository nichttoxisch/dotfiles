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
alias ltspice="wine $HOME/.wine/drive_c/Program\ Files/ADI/LTspice/LTspice.exe"

# export CHROME_USER_FLAGS="--disable-gpu-vsync --disable-frame-rate-limit"
export MANPAGER="$HOME/dotfiles/manpager"
export EDITOR=nvim
export PATH="$PATH:$HOME/opt/bin"

. "$HOME/.local/bin/env"
