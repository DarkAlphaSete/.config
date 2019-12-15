#!/bin/bash

/usr/bin/rm $HOME/.zshrc
/usr/bin/ln -s $XDG_CONFIG_HOME/zshrc $HOME/.zshrc

/usr/bin/rm $HOME/.vimrc
/usr/bin/ln -s $XDG_CONFIG_HOME/vimrc $HOME/.vimrc


/usr/bin/rm $HOME/.xinitrc
/usr/bin/ln -s $XDG_CONFIG_HOME/xinitrc $HOME/.xinitrc

/usr/bin/rm $HOME/.Xresources
/usr/bin/ln -s $XDG_CONFIG_HOME/Xresources $HOME/.Xresources
