sudo dnf install -y \
    waybar \
    wofi \
    zsh \
    fastfetch \
    flameshot \
    swaybg \
    kitty \
    NetworkManager-tui \
    dunst \
    bat \
    jetbrains-mono-fonts \
    libertinus-fonts \ 
    steam \ 
    nmtui --skip-unavailable

sudo systemctl enable --now docker
sudo usermod -aG docker $USER  

sudo chsh -s "$(which zsh)"

curl -f https://zed.dev/install.sh | sh

sudo dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker

sudo dnf copr enable

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub app.zen_browser.zen

sudo dnf install steam -y

echo "INFO: Install Hyprland through the COPR repository: https://copr.fedorainfracloud.org/coprs/lionheartp/Hyprland"
