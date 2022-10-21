export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="agnoster"
unsetopt correct 

plugins=(git fzf)

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
alias pip='sudo pip'
alias ls='ls --color=auto'
alias pacman='sudo pacman'

#some alias for shortcuts in my sexy system
alias git commit='git commit -a'
