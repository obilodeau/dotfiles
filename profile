# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
# set PATH so it includes go bin path if it exists
if [ -d "$HOME/src/go/bin" ] ; then
    PATH="$HOME/src/go/bin:$PATH"
fi
# local gems
GEMDIR=$(ruby -e 'print Gem.user_dir')
if [ -d "$GEMDIR/bin" ] ; then
    PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
fi

# work cli tools
if [ -d "$HOME/eset/src/sip-cli" ] ; then
    PATH="$HOME/eset/src/sip-cli:$PATH"
fi

# my cli tools
if [ -d "$HOME/src/cli-tools" ] ; then
    PATH="$HOME/src/cli-tools:$PATH"
fi
