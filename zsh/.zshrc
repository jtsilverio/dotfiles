# USER CONFIGS
alias activate="source .venv/bin/activate"

# ZSH
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"
plugins=(git python docker zsh-autosuggestions zsh-syntax-highlighting copypath)

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
source $ZSH/oh-my-zsh.sh

# Created by `pipx` on 2026-01-30 16:32:42
export PATH="$PATH:$HOME/.local/bin"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# LOCAL ENV
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# FZF
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# STARSHIP
eval "$(starship init zsh)"