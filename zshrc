
# fpath
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
export FPATH="$HOME/.zsh/functions:${FPATH}"
export FPATH="$HOME/.zsh/completions:${FPATH}"

eval "$(starship init zsh)"

export CLICOLOR=1

alias ll='ls -l'
alias la='ls -al'

# AWS
export AWS_PROFILE=tetora
export AWS_PAGER=cat

autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
