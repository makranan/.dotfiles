alias vim=nvim
alias lg=lazygit

# Git
alias gcl="git clone"
alias gst="git status"
alias gadd="git add ."
alias gp="git push -u origin main"


function gplocal() {
    git init -b main
    git add .
    git commit -m "initial commit"
}

function lazyman() {
    git add .
    git commit -a -m "$1"
    git push -u origin main
}

# Git clone, cd into project, and open in Sublime
function boom {
    reponame=${1##*/}
    reponame=${reponame%.git}
    git clone "$1" "$reponame"
    cd "$reponame"
    bundle install
    open .
}

# Navigation
alias up="cd .."
alias upp="cd .. && cd .."
alias home="cd ~"
alias dotfiles="cd ~/.dotfiles"

# Various
alias opencustomaliases="nvim  ~/.aliases.zsh"
alias updatecustomaliases="source ~/.aliases.zsh"
alias updatethenupgrade="sudo apt update && sudo apt upgrade"

# Speed up bash
function speedupbash() {
    git config --global core.preloadindex true
    git config --global core.fscache true
    git config --global gc.auto 256
    # echo 'speedupbash initialized'
}

# echo '.custom_bash_aliases loaded properly'
