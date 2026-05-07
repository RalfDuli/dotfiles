# Source global definitions
if [ -f /etc/zshrc ]; then
    . /etc/zshrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# User specific aliases and functions
if [ -d ~/.zshrc.d ]; then
    for rc in ~/.zshrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

source .aliases

# Temporary aliases
alias tcdvpn="sudo tailscale  login  --login-server   https://vpn-student.scss.tcd.ie --accept-routes"
alias pirates="ssh -i .ssh/id_ed25519 root@167.71.36.57"

# Startup processes
fastfetch
