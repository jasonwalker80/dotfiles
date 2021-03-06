#!/bin/bash

#tcsh like prompt
PS1="\u@\h:\w \!>"
export MYGPGKEY=2F9338CB

export IGNOREEOF=99999999
alias cd="pushd >/dev/null";
alias bd="popd >/dev/null";
set -o noclobber
set completion-ignore-case On
source $HOME/.git-completion.sh
umask 002

if [ "$PS1" ]; then             # interactive shell
    # make colorful prompt
    CYAN="\[\033[0;36m\]"
    GRAY="\[\033[0;37m\]"
    BLACK="\[\033[0;30m\]"
    BLUE="\[\033[0;34m\]"
    RED="\[\033[0;31m\]"
    PURPLE="\[\033[0;35m\]"
    BROWN="\[\033[0;33m\]"
    NONE="\[\e[m\]"
    export PS1R="${RED}\u@\h ${BROWN}\w>${NONE} "
    #export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
    #export PS1=$RED'\u@\h '$BROWN'\w$(__git_ps1 " (%s)")>'$NONE" "
    export PS1=$RED'\u@\h '$BROWN'\w'$CYAN'$(__git_ps1 " (%s)")'$BROWN'>'$NONE" "
fi

if [ `uname` = "Darwin" ]; then
    echo init paths...
    export CLICOLOR=1
    export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH
    export MANPATH=/opt/local/share/man:$MANPATH
else
    export PATH=$HOME/bin:$PATH
    alias ls="ls --color"
    alias sr='sqlrun --instance warehouse';
fi

alias rm='rm -i'
alias mv='mv -i'


