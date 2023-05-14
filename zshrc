if [ -e $HOME/.zsh/completions ]; then
  fpath=($HOME/.zsh/completions $fpath)
fi

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

eval "$(starship init zsh)"

#source $HOME/.zsh/functions/*

export CLICOLOR=1

alias ll='ls -l'
alias la='ls -al'
