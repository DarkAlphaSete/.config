# Environment variables
export DEFAULT_USER=`whoami`
export HOME="/home/$DEFAULT_USER"

export XKB_DEFAULT_LAYOUT="pt"

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

export SHELL="zsh"
export TERMINAL="kitty"
export EDITOR="vim"
export VISUAL=$EDITOR

export MOZ_ENABLE_WAYLAND=1
#export IDEA_JDK="/home/planet/.jbr/jbr_jcef-11_0_11-linux-x64-b1341.57"

if [ $XDG_SESSION_TYPE = "wayland" ]; then
    export BROWSER="firefox"
else 
    export BROWSER="elinks"
fi



# Aliases
alias cat="bat"
alias vimpager="/usr/share/vim/vim82/macros/less.sh"



# XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
#export XDG_PUBLICSHARE_DIR="$HOME/Public"
#export XDG_TEMPLATES_DIR="$HOME/Templates"
#export XDG_VIDEOS_DIR="$HOME/Videos"



# Miscellaneous
export ARCHFLAGS="-arch x86_64-v3"
