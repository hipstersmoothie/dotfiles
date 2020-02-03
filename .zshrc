# Path to your oh-my-zsh installation.
export ZSH="/Users/alisowski/.oh-my-zsh"

ZSH_THEME="spaceship"

source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

alias gs="git status"
alias ga="git add"
alias gc="git commit"

gitPush()
{
    # If in a git repo - call git mv. otherwise- call mv
    if [[ $(git config "branch.$(git rev-parse --abbrev-ref HEAD).merge") == '' ]]; 
    then
        git push -u
    else 
        git push
    fi
}
alias gp=gitPush
alias gpr="gp && pr"

# Delete merged branches
alias gcb="git checkout master && git pull && git branch --merged master | egrep -v master | xargs -I % sh -c 'git branch -d %; git config --get branch.%.merge && git push origin -d %'"

alias c="code-insiders"
alias cat="bat"
alias preview="fzf --preview 'bat --color \"always\" {}'"

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code-insiders {})+abort'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
