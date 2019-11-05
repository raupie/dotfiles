<<<<<<< Updated upstream
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Git alias
if [ -f ~/.git_aliases ]; then
  . ~/.git_aliases
fi

# Docker alias
if [ -f ~/.docker_aliases ]; then
  . ~/.docker_aliases
fi

# eZ Publish
if [ -f ~/.ez_profile ]; then
  . ~/.ez_profile
fi

# Platform.sh
if [ -f ~/.platformsh_aliases ]; then
  . ~/.platformsh_aliases
fi

# Dreamhost
if [ -f ~/.dreamhost_profile ]; then
  . ~/.dreamhost_profile
fi

# WordPress
if [ -f ~/.wordpress_aliases ]; then
  . ~/.wordpress_aliases
fi

[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"

export PATH="$HOME/.composer/vendor/bin:$PATH"

# BEGIN SNIPPET: Platform.sh CLI configuration
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET
 
# BEGIN SNIPPET: Magento Cloud CLI configuration
export PATH="$HOME/"'.magento-cloud/bin':"$PATH"
if [ -f "$HOME/"'.magento-cloud/shell-config.rc' ]; then . "$HOME/"'.magento-cloud/shell-config.rc'; fi # END SNIPPET