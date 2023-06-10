# install all
install-all: install-brew install-starship install-gh install-awscli install-terraform

# brew
install-brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# starship
install-starship: install-brew
	brew install starship

# github cli
install-gh: install-brew
	brew install gh

# awscli
install-awscli: install-brew
	brew install awscli

# terraform
install-terraform: install-brew
	brew install terraform
