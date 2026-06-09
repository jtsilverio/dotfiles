# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

### Prerequisites

```sh
brew install stow
```

### Install

Clone the repo and apply all packages:

```sh
git clone https://github.com/jtsilverio/dotfiles ~/code/dotfiles
cd ~/code/dotfiles
make stow
```

### Uninstall

```sh
make unstow
```

## Local overrides

Git supports a local config file for machine-specific settings (email, signing key, etc.) that is not committed to the repo:

```sh
# ~/.gitconfig.local
[user]
  name = Your Name
  email = your@email.com
```
