#.bashrc

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
if [ -f ~/.ez_aliases ]; then
  . ~/.ez_aliases
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

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi
