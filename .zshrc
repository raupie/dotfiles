export ZSH=$HOME/.oh-my-zsh
 
ZSH_THEME="agnoster"
 
ENABLE_CORRECTION="true"
 
plugins=(git extract web-search)
 
source $ZSH/oh-my-zsh.sh
 
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
else
  export EDITOR='nano'
fi
 
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
  
source ~/.bashrc
