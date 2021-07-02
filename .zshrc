export ZSH=$HOME/.oh-my-zsh
 
ZSH_THEME="agnoster"

ZSH_DISABLE_COMPFIX="true"
 
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
alias vim="nocorrect vim"
alias ssh="nocorrect ssh"

alias date="/usr/local/bin/TIME.sh"

# Platform CLI
alias platform="nocorrect platform"
alias ssh="nocorrect ssh"
alias psh="platform ssh"
alias mc="magento-cloud ssh"
 
source ~/.bashrc

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/home/raupie'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

# BEGIN SNIPPET: Magento Cloud CLI configuration
HOME=${HOME:-'/home/raupie'}
export PATH="$HOME/"'.magento-cloud/bin':"$PATH"
if [ -f "$HOME/"'.magento-cloud/shell-config.rc' ]; then . "$HOME/"'.magento-cloud/shell-config.rc'; fi # END SNIPPET

# BEGIN SNIPPET: SymfonyCloud (PHP) CLI configuration
HOME=${HOME:-'/home/raupie'}
export PATH="$HOME/"'.symfony-cloud-cli/bin':"$PATH"
if [ -f "$HOME/"'.symfony-cloud-cli/shell-config.rc' ]; then . "$HOME/"'.symfony-cloud-cli/shell-config.rc'; fi # END SNIPPET
