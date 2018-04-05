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

# Dreamhost
if [ -f ~/.dreamhost_profile ]; then
  . ~/.dreamhost_profile
fi

# eZ Publish
if [ -f ~/.ez_profile ]; then
  . ~/.ez_profile
fi

LS_COLORS=$LS_COLORS:'di=0;32:' ; export LS_COLORS

if [[ $- == *i* ]]
then
    export PS1="\u@\h:\w \\$ \[$(tput sgr0)\]"
fi

export HISTCONTROL=ignoredups~

## Change this for WSL Docker Environments
## TODO: make this into a prompt to add
#mount --bind /mnt/d /d
