# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/alisowski/.oh-my-zsh"
export BAT_PAGER="less -RF"

ZSH_THEME="powerlevel10k/powerlevel10k"
NODE_OPTIONS=--max_old_space_size=8192

plugins=(node yarn)

eval "$(zoxide init zsh)"
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

COMPLETION_WAITING_DOTS="true"
export EDITOR="/usr/local/bin/code-insiders"

source $ZSH/oh-my-zsh.sh

alias wallpaper="~/Documents/wallpaperchanger/wallpaperChanger.sh"
alias cw="~/Documents/wallpaperchanger/wallpaperChanger.sh"

alias restart="exec zsh"

alias g="gitup"
alias gi="git ignore"
alias gb="git checkout -b"
alias gs="git status --short"
alias gss="git status"
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C( yellow)%d%C(reset)' --all"
alias ga="git add -v"
alias gaa="ga -A"
alias gaf="gaa && git amend && gp -f"
alias gc="git commit -m"
alias gcn="git commit --no-verify -m"

gitPush()
{
    # If in a git repo - call git mv. otherwise- call mv
    if [[ $(git config "branch.$(git rev-parse --abbrev-ref HEAD).merge") == '' ]]; 
    then
        git push -u --porcelain "$@"
    else 
        git push --porcelain "$@"
    fi
}
alias gp=gitPush

# Delete merged branches
gcb() {
  branch=${1:-master}  
  git checkout $branch;
  git pull;
  git branch --merged $branch --format "%(refname:lstrip=2)" | egrep -Ev '^\s*(next|main|master)$' | xargs -I % sh -c 'git branch -d %; git config --get branch.%.merge && git push origin -d %'
}

alias c="code-insiders"
alias cat="bat"
alias ls="exa"
alias lss="exa -alh --icons --git-ignore"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias zshrc="c ~/.zshrc"
alias yl="yarn lint"
alias ys="yarn start"
alias yss="yarn storybook"
alias top="vtop"

# $1 - the repoository to clone
setup() {
  git clone $1;
  cd cgds;
  git remote add main https://github.intuit.com/design-systems/cgds;
  git fetch main;
  git checkout --track main/master;
}

create-branch() {
  git checkout master;
  git pull;
  git checkout -b $1;
}

export GIT_PAGER=""

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code-insiders {})+abort'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
