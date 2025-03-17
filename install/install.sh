#!/bin/bash

# List of packages to install
read -r -d '' PACKAGES <<EOL
git
stow
vim
ripgrep
gnome-tweaks
tree
fzf
neofetch
openjdk-17-jre-headless
openjdk-17-jdk-headless
python3.10-venv
ruby-rubygems
xsel
libsdl2-dev
cmake
g++-12
texlive-latex-base
cmdtest
EOL

sudo apt-get update
sudo apt upgrade -y

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

# Initialize a counter for installed packages
installed_count=0

# Loop through each package
for package in "${PACKAGES_ARRAY[@]}"; do
	# Check if the package is already installed
	sudo apt install -y "$package" &> /dev/null
	if [ $? -eq 0 ]; then
		echo "$package is installed"
		installed_count=$((installed_count + 1))
	else
		echo "$package is not installed"
	fi
done

# Flatpak

#Amberol
flatpak install flathub io.bassi.Amberol -y
#Celluloid
flatpak install flathub io.github.celluloid_player.Celluloid -y

# Print summary
echo "Total packages installed: $installed_count"
echo "Version: $(nvim --version)"

sudo apt autoremove -y

./setup.sh
cd ..
stow config
