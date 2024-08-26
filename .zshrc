export PATH=$HOME/go/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

if [[ -z "${SOURCED}" ]]; then
    export SOURCED="YES"
    source ~/.zshrc
fi

export EDITOR=vim

alias k="kubectl"
alias nr="npm run"
alias tf="terraform"
