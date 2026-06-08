.PHONY: stow unstow

stow:
	stow -t ~ */

unstow:
	stow -t ~ -D */
