# My personal dotfiles

## Step by step setup

### Shell and prompt

```
sudo apt install -y zsh
# Prompt configuration
curl -sS https://starship.rs/install.sh | sh
chsh --shell /bin/zsh
starship preset pure-preset -o ~/.config/starship.toml
```

### Download dotfiles

```
# Clone the repo
git clone --filter=blob:none https://github.com/paualberti/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles/install
```

### Execute the scripts

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
