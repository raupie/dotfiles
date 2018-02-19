alias c='clear'
alias l='ls -al'
alias ldir='ls -ld */'
alias lm='ls -al|more'

alias myip='curl http://ipecho.net/plain; echo'
alias ducks='du -csh * | sort -rn | head'

#Docker Custom: Prune Containers
alias dpc='docker container prune -f'

#Docker Custom: Prune Images
alias dpi='docker image prune -a -f'

#Docker Custom: Prune Volumes
alias dpv='docker volume prune -f'

#Docker Custom: Prune Network
alias dpn='docker network prune -f'

#Docker Custom: Connect to Container
alias dc='f() { docker exec -it $1. /bin/bash };f'

# Docker Custom: Destroy containers+images+volumes+networks
function docker-destroy-everything {
        #docker system prune -f
        docker kill $(docker ps -a -q)
        dpc
        dpv
        dpn
        dpi
}
alias dnuke=docker-destroy-everything
