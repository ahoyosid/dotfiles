# -----------------------------------------------------------------------------
# Shortcut bindings
# -----------------------------------------------------------------------------
alias ea='vim +2000 ~/.bash_aliases; source ~/.bash_aliases'

alias v='vim'

alias l='ls -ltr'
alias ll='ls -alF'
alias la='ls -A'
alias lc='ls -CF'

alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias inria='ssh -D 2002 inria'
alias drago='ssh drago -X'
alias tompouce='ssh tompouce -X'
alias gforge='ssh ahoyosid@scm.inria.fr -X'

alias q="exit"
alias c="clear"

# Aptitude
alias aptg='sudo apt-get install'
alias aptr='sudo apt-get remove'
alias apts='apt-cache search'
alias aptup='sudo apt-get update'
alias aptug='sudo apt-get upgrade'
alias ubuntu_version='lsb_release -a'

# Git
alias glog='git log --pretty=online'
alias gdiff='git diff'
alias gcommit='git commit'
alias gpush='git push'
alias gpull='git pull'
alias gadd='git add'
alias gpp='git pull --rebase; git push;'
alias gb='git branch -av'

# Virtual envs
alias vl='conda info --envs'

va() {
    source activate $1;
}

vd(){
    source deactivate $1;
}

# Screen
alias sl='screen -ls'
alias sr='screen -r'
alias sd='screen -d'
alias sms='screen -mS'
alias sdr='screen -dr'

ks() {
    screen -X -S $1 quit;
}


# Python
alias ipy='ipython'
alias ipyl='ipython --pylab'
alias ipyd='ipython --debug'
alias jn='jupyter-notebook'


# Vagrant
alias vg='vagrant'
alias vgu='vagrant up'
alias vgp='vagrant provision'
alias vgs='vagrant ssh'
alias vgst='vagrant status'
alias vgh='vagrant halt'
alias vgd='vagrant destroy'
