# My personal dotfiles

## Step by step setup

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
