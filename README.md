# My personal dotfiles

## Step by step setup

### ZSH setup

```
sudo apt install -y zsh
curl -sS https://starship.rs/install.sh | sh

chsh --shell /bin/zsh
starship preset pure-preset -o ~/.config/starship.toml
```

### Download dotfiles

```
# Set variable name $dotfiles to desired location
dotfiles=$HOME/dotfiles/
# Ensure location is available
rm -rf $dotfiles
# Clone the repo
git clone --filter=blob:none https://github.com/paualberti/dotfiles.git $dotfiles
cd $dotfiles/install
# Create executable scripts
chmod +x install.sh setup.sh stow.sh
```

### Use the scripts to setup the dotfiles

<details><summary>With sudo access</summary>

```
# Install packages: ghostty, lazygit, fzf, ...
./install.sh
# Setup neovim and a nerdfont
./setup.sh
# Symlink configuration files
cd ..
stow config
```

</details>

<details><summary>Without sudo access</summary>

```
# Setup neovim and a nerdfont
./setup.sh
# Symlink configuration files
./stow.sh ../config
```

</details>
