#!/bin/bash

# List of packages to install
read -r -d '' PACKAGES <<EOL
git
stow
vim
ripgrep
tree
fzf
neofetch
xsel
libsdl2-dev
cmake
g++-12
pandoc
EOL

sudo apt-get update
sudo apt upgrade -y

# Zoxide
if ! command -v which z >/dev/null 2>&1; then
	curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
	zoxide init zsh &> /dev/null
else
	echo zoxide is already installed
fi

# Ghostty
if ! command -v ghostty >/dev/null 2>&1; then
	source /etc/os-release
	GHOSTTY_DEB_URL=$(
	curl -s https://api.github.com/repos/mkasberg/ghostty-ubuntu/releases/latest | \
		grep -oP "https://github.com/mkasberg/ghostty-ubuntu/releases/download/[^\s/]+/ghostty_[^\s/_]+_amd64_${VERSION_ID}.deb"
	)
	GHOSTTY_DEB_FILE=$(basename "$GHOSTTY_DEB_URL")
	curl -LO "$GHOSTTY_DEB_URL"
	sudo dpkg -i "$GHOSTTY_DEB_FILE"
	rm "$GHOSTTY_DEB_FILE"
else
	echo ghostty is already installed
fi

if ! command -v lazygit >/dev/null 2>&1; then
	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
	curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
	tar xf lazygit.tar.gz lazygit
	sudo install lazygit -D -t /usr/local/bin/
	rm lazygit.tar.gz lazygit
else
	echo lazygit is already installed
fi

# Convert the list into an array
PACKAGES_ARRAY=($PACKAGES)

# Loop through each package
for package in "${PACKAGES_ARRAY[@]}"; do
	# Check if the package is already installed
	sudo apt install -y "$package" &> /dev/null
	if [ $? -eq 0 ]; then
		echo "$package is installed"
	else
		echo "$package is not installed"
	fi
done

#Amberol
flatpak install flathub io.bassi.Amberol -y
#Celluloid
flatpak install flathub io.github.celluloid_player.Celluloid -y

sudo apt autoremove -y
