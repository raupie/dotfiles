alias c='clear'
alias l='ls -alh'
alias ldir='ls -ld */'
alias lm='ls -al|more'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias myip='curl http://ipecho.net/plain; echo'
alias ducks='du -csh * | sort -rn | head'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
