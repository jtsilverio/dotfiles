.PHONY: stow unstow vscode unvscode bootstrap

VSCODE_DIR := $(HOME)/Library/Application Support/Code/User

STOW_PKGS := $(shell ls -d */ | grep -v '^vscode/')

stow:
	stow -t ~ $(STOW_PKGS)

unstow:
	stow -t ~ -D $(STOW_PKGS)

vscode:
	ln -sf $(PWD)/vscode/settings.json "$(VSCODE_DIR)/settings.json"
	ln -sf $(PWD)/vscode/keybindings.json "$(VSCODE_DIR)/keybindings.json"

unvscode:
	rm -f "$(VSCODE_DIR)/settings.json" "$(VSCODE_DIR)/keybindings.json"

bootstrap:
	brew install fzf fd
	git clone https://github.com/zsh-users/zsh-autosuggestions \
		$${ZSH_CUSTOM:-$$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 2>/dev/null || true
	git clone https://github.com/zsh-users/zsh-syntax-highlighting \
		$${ZSH_CUSTOM:-$$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 2>/dev/null || true
