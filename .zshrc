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

# Aliases
alias connectbluetooth="chmod +x ~/.config/scripts/connectbluetooth.sh && ~/.config/scripts/connectbluetooth.sh"
alias connectwifi="chmod +x ~/.config/scripts/connectwifi.sh && ~/.config/scripts/connectwifi.sh"
alias changekernel="chmod +x ~/.config/scripts/changekernel.sh && ~/.config/scripts/changekernel.sh"
alias ff="fastfetch"

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

# Startup processes
fastfetch