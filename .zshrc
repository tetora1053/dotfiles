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

# git commit & push for poc quickly
git-commit-and-push-for-poc() {
  current_branch=$(git branch --show-current)
  git add .
  git commit -m "poc"
  if [[ $current_branch != "master" && $current_branch != "main" ]]; then
    # リモートブランチが存在しない場合は作成
    git fetch origin $current_branch
    if [[ $? -ne 0 ]]; then
      git push --set-upstream origin HEAD
    fi
  fi
  git push origin $current_branch
}
