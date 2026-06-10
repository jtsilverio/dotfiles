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

Machine-specific config that shouldn't be committed lives in `.local` files. Run `make init-local` to create them from the provided templates:

```sh
make init-local
```

## Aliases

All shared aliases live in `zsh/.aliases` (symlinked to `~/.aliases`). Machine-specific aliases go in `~/.aliases.local`, which is sourced automatically but never committed.
