# Install NerdFont
font_name="$HOME/.local/share/fonts/SauceCodeProNerdFont/SauceCodeProNerdFont"
base_name=$(basename "$font_name")
if [ ! -d "$HOME/.local/share/fonts/SauceCodeProNerdFont/" ]; then
	mkdir -p "$font_name"
	curl -Lo "$font_name.zip" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/SourceCodePro.zip"
	unzip "$font_name.zip" -d "$font_name"
	rm "$font_name.zip"
	echo "Installed $base_name"
else
	echo "$base_name already installed"
fi

# Neovim
if [ ! -d "~/.local/bin/nvim/" ]; then
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
	chmod +x nvim-linux-x86_64.appimage
	mkdir -p $HOME/.local/bin/
	mv nvim-linux-x86_64.appimage $HOME/.local/bin/nvim
else
	echo "neovim is already installed"
fi

# Homebrew
if [ ! -d "~/.local/homebrew/" ]; then
	git clone --filter=blob:none https://github.com/Homebrew/brew ~/.local/homebrew
	eval "$(~/.local/homebrew/bin/brew shellenv)"
	brew update --force --quiet
	chmod -R go-w "$(brew --prefix)/share/zsh"
fi
