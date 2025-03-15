# Config

## Step by step setup

### Set a path

```
path=<your_path>
```

```
path=$HOME/dotfiles/
```

### Clone the project

```
git clone --filter=blob:none https://github.com/paualberti/dotfiles.git $path
cd $path
```

### Setup applications

```
chmod +x setup.sh
./setup.sh
```

### Symlink config

```
stow config
```

## All in one go

```
path=$HOME/dotfiles/
rm -rf $path
git clone --filter=blob:none https://github.com/paualberti/dotfiles.git $path
cd $path
chmod +x setup.sh
./setup.sh
stow config
```
