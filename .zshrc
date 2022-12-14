export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="agnoster"
unsetopt correct 

plugins=(git fzf zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
 export LANG=de_DE.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vi'
 fi

alias sudo='sudo -E'
alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias podman='sudo podman'
alias pip='python -m pip'

#some alias for shortcuts in my sexy system
alias git commit='git commit -a'
alias graph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
