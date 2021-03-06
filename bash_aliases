# the following is a symlink trick to allow ssh-agent forwarding even
# through screen sessions that get detached
#
# no longer using screen, I think byobu does this by default
# from http://www.jukie.net/bart/blog/screen-ssh-agent
#_ssh_auth_save() {
#    ln -sf "$SSH_AUTH_SOCK" "$HOME/.screen/ssh-auth-sock.$HOSTNAME"
#}
#alias screen='_ssh_auth_save ; export HOSTNAME=$(hostname) ; screen'

# irssi incompatible with 256 colors
# https://bbs.archlinux.org/viewtopic.php?id=120416
alias irssi='TERM=xterm-color $(which irssi)'

alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
