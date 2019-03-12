# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
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
