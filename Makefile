# install all
install-all: install-brew install-starship install-gh install-awscli install-terraform

# brew
install-brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# asdf
install-asdf: install-brew
	brew install asdf

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

# argocd
install-argocd: install-brew
	brew install argocd

# jq
install-jq: install-brew
	brew install jq

# yq
install-yq: install-brew
	brew install yq

# nvm
install-nvm: install-brew
	brew install nvm

# bun
install-bun: install-brew
	brew tap oven-sh/bun
	brew install bun

# kubectl
install-kubectl: install-brew
	brew install kubectl

# kubectx & kubens
install-kubectx: install-brew
	brew install kubectx
