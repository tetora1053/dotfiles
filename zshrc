
# fpath
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
export FPATH="$HOME/.zsh/functions:${FPATH}"
export FPATH="$HOME/.zsh/completions:${FPATH}"

eval "$(starship init zsh)"

export CLICOLOR=1
# do not display trailing '%'
export PROMPT_EOL_MARK=''

alias ll='ls -lF'
alias la='ls -alF'

# AWS
export AWS_PROFILE=tetora
export AWS_PAGER=cat

autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

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

alias 'k=kubectl'
