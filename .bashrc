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

# push to history every time we enter a command
PROMPT_COMMAND="history -a"

# this experiment failed :(
# GPG Agent setup
#eval `gpg-agent --daemon`
#GPG_TTY=$(tty)
#export GPG_TTY

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
