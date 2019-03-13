alias c='clear'
alias l='ls -alh --color=auto'
alias ls='ls --color=auto'
alias lm='ls -al|more --color=auto'
alias ldir='ls -ld */'
alias cl='clear & ls -alh --color=auto'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias df='df -h'
alias du='du -h -c'

alias myip='curl http://ipecho.net/plain; echo'
alias ducks='du -csh * | sort -rn | head'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
