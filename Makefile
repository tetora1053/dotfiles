install: install-gh

install-brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install-gh: install-brew
	brew install gh

install-terraform: install-brew
	brew install terraform
