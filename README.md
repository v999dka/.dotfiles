# .dotfiles 

0. In case to be working on Apple we should install xcode (prerequisited for Git and Homebrew)

```
xcode-select --install
```

1. Clone repo to local

```
git clone https://github.com/v999dka/.dotfiles.git ~/.dotfiles
```

2. Execute installer 

> [!IMPORTANT]
> Currently you have to make the symlinks and install everything for yourself, but here you have a few examples on how to do it.

```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

Installing brew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file ~/.dotfiles/Brewfile
```
