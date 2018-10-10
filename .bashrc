eval "$(fasd --init auto)"

PS1='╭ \033[01;33m\]\u\033[01;31m\] 🦕 \033[01;32m\]\h\033[00m\]:\033[01;34m\]\w'
if [ -f "/usr/local/Cellar/git/2.17.1/etc/bash_completion.d/git-prompt.sh" ]
then
    source "/usr/local/Cellar/git/2.17.1/etc/bash_completion.d/git-prompt.sh"	
    PS1=${PS1}'\033[01;35m\]$(__git_ps1 " (%s)")' 
fi
export PS1=${PS1}'\033[00m\]\n╰> '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export PATH=/Users/ericeldridge/anaconda3/bin:/Users/ericeldridge/bin:$PATH

#Functions

ab(){
    source activate baseball 
    export PS1="╭ \033[01;33m\]\u\033[01;31m\]🦕 \033[01;32m\]\h\033[00m\]:\033[01;34m\]\w\033[01;35m\]$(__git_ps1 " (%s)")\033[00m\] (baseball)\n╰> "
}

db(){
    source deactivate
    if [ $? -eq 0 ]
    then
	export PS1="╭ \033[01;33m\]\u\033[01;31m\]🦕 \033[01;32m\]\h\033[00m\]:\033[01;34m\]\w\033[01;35m\]$(__git_ps1 " (%s)")\033[00m\]\n╰> "
    else
        echo "No baseball environment to deactivate"
    fi
    source deactivate
}

af(){
    source activate football 
    export PS1="╭ \033[01;33m\]\u\033[01;31m\]🦕 \033[01;32m\]\h\033[00m\]:\033[01;34m\]\w\033[01;35m\]$(__git_ps1 " (%s)")\033[00m\] (football)\n╰> "
}

df(){
    source deactivate
    if [ $? -eq 0 ]
    then
	export PS1="╭ \033[01;33m\]\u\033[01;31m\]🦕 \033[01;32m\]\h\033[00m\]:\033[01;34m\]\w\033[01;35m\]$(__git_ps1 " (%s)")\033[00m\]\n╰> "
    else
        echo "No football environment to deactivate"
    fi
    source deactivate
}

ac(){
    source activate controls 
    export PS1="╭ \033[01;33m\]\u\033[01;31m\]🦕 \033[01;32m\]\h\033[00m\]:\033[01;34m\]\w\033[01;35m\]$(__git_ps1 " (%s)")\033[00m\] (controls)\n╰> "
}

dc(){
    source deactivate
    if [ $? -eq 0 ]
    then
	export PS1="╭ \033[01;33m\]\u\033[01;31m\]🦕 \033[01;32m\]\h\033[00m\]:\033[01;34m\]\w\033[01;35m\]$(__git_ps1 " (%s)")\033[00m\]\n╰> "
    else
        echo "No baseball environment to deactivate"
    fi
    source deactivate
}

#Aliases

alias emacs='emacs -nw'
alias jl='jupyter lab'
alias jn='jupyter notebook'
alias diffname='diff --name-only'
alias cdbbdata='cd /keybase/team/teamhorse/data'
alias cdfbdata='cd /keybase/team/teamhorse/data/NFL'
alias cdbbsrc='cd ~/Code/DFSProject/wiffleball/src/'
alias cdfbsrc='cd ~/Code/DFSProject/wifflefoot/src/'
alias ssh-hal='ssh hal-9001'
alias ssh-HE='ssh HorseyExpress'
