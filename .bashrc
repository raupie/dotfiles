# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Docker alias
if [ -f ~/.docker_aliases ]; then
  . ~/.docker_aliases
fi

LS_COLORS=$LS_COLORS:'di=0;32:' ; export LS_COLORS

if [[ $- == *i* ]]
then
    export PS1="\u@\h:\w \\$ \[$(tput sgr0)\]"
fi

export HISTCONTROL=ignoredups~
