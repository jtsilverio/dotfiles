eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# PATH
export PATH="$PATH:$HOME/.local/bin"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# UV
export UV_MALWARE_CHECK=1

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# LOCAL ENV
[[ -f ~/.zprofile.local ]] && source ~/.zprofile.local