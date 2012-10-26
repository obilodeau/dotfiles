# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# vi is default editor on fedora
# using vim makes for nice git commit syntax highlight
export EDITOR=vim

# append to the history file, don't overwrite it
shopt -s histappend

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
