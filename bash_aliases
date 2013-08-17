# the following is a symlink trick to allow ssh-agent forwarding even
# through screen sessions that get detached
#
# from http://www.jukie.net/bart/blog/screen-ssh-agent
_ssh_auth_save() {
    ln -sf "$SSH_AUTH_SOCK" "$HOME/.screen/ssh-auth-sock.$HOSTNAME"
}
alias screen='_ssh_auth_save ; export HOSTNAME=$(hostname) ; screen'

