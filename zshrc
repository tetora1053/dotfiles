if [ -e $HOME/.zsh/completions ]; then
  fpath=($HOME/.zsh/completions $fpath)
fi

# fpath
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
export FPATH="$HOME/.zsh/functions:${FPATH}"

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

eval "$(starship init zsh)"

export CLICOLOR=1

alias ll='ls -l'
alias la='ls -al'

# AWS
export AWS_PROFILE=tetora
export AWS_PAGER=cat
