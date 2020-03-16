# Dotfiles

Dotfiles for Mac using [YADM](https://yadm.io/).

## Installation

First, install Homebrew:

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Then install YADM and Fish (needed for the bootstrap file):

```
$ brew install yadm fish
```

Now bootstrap using this repository:

```
$ yadm clone --bootstrap https://github.com/ethnt/dotfiles.git
```