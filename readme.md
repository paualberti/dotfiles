# Config

## Set a path

```
path=<your_path>
```

```
path=$HOME/Config/
```

## Clone the project

```
git clone --filter=blob:none https://github.com/paualberti/Config.git $path
cd $path
```

## Setup config

```
chmod +x setup.sh
./setup.sh
```

## All in one go

```
path=$HOME/Config/
rm -rf $path
git clone --filter=blob:none https://github.com/paualberti/Config.git $path
cd $path
chmod +x setup.sh
./setup.sh
```
