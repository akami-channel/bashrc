#
# ~/.bashrc
#

# Arch package manager yay aliases
alias y="yay"
alias search="yay -Ss"

alias bin="cd /usr/local/bin"
alias sv="sudo vim"

# allows "vi" mode in bash
set -o vi

alias c="clear;"

# Just for reminding me what the best size is for youtube thumbnails
alias best_size="echo 1280 x 720 pixels"

# For infor about masks. There were so many people spreading nonsense about masks, I created these aliases.
alias masks="echo 'https://www.youtube.com/watch?v=_JH04M04eQQ&feature=youtu.be

https://www.businessinsider.com/fauci-mask-advice-was-because-doctors-shortages-from-the-start-2020-6

https://www.reddit.com/r/China_Flu/comments/fespif/masks_dont_work_a_scientific_deep_dive/'"

# Not so sure about this. There's an interesting stackoverflow post about this out there.
export QUOTING_STYLE=literal

# mpv av://v4l2:/dev/video0
alias mpv="mpv --mute=yes --shuffle"

# alias htop=glances
alias l="clear;ls -a1"
alias merge="xrdb -merge ~/.Xresources"

alias sublime="/opt/sublime_text_3/sublime_text"
alias yt="youtube-dl -ic"
alias yta="youtube-dl -icx"
alias ytt="youtube-dl -ic --write-thumbnail" # Download video link
alias p="vim ~/.bashrc"
alias s="source ~/.bashrc"
alias ..="cd .."
alias ss="sudo systemctl"
alias pt="sudo vim ~/.config/termite/config"
alias D="cd ~/Downloads"
alias d="cd ~/Downloads"
alias usef="cat ~/s/useful-private/useful_code"

alias gs="git status"
alias gps="git push"
alias gpl="git pull"
alias gl="git log"
alias gc="git commit"
alias gcd="git commit -m \"$(date)\""

alias ga="git add --al"
alias gd="git diff"

alias kd="killall Discord"

#function normalize(){
#	eval string1="$1"
#	eval string2="$2"
#	ffmpeg-normalize $string1 -o $string2
#	#ffmpeg-normalize -c:a aac "$1" -o "$2"
#}

# Only works when $1 and $2 don't have spaces, so not sure how to fix that. Was trying to fix above.
function normalize(){
    ffmpeg-normalize -c:a aac $1 -o $2
}

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
#alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias grep='grep --color'
#alias ls='ls --color=auto'
alias diff="diff --color"


EDITOR=vim
alias U="vim ~/s/useful-private/useful_code"
alias pu="vim ~/s/useful-private"
alias pi="vim ~/.config/i3/config"
alias pc="vim ~/.config/polybar/config"

alias am="alsamixer"

function checkdir(){
    find $1 -type f -print0 | xargs -0 sha1sum | awk '{print $1}' | sort | sha1sum
}

# Not sure what this is about tbh
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
BROWSER=brave

#alias ls='ls -1 --color=auto'
