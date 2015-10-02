# .bashrc

#export SEYMOUR_HOME=/gscmnt/pacbio/production/smrtanalysis
#. $SEYMOUR_HOME/etc/setup.sh

# source global definitions
if [ -f /etc/bashrc ]; then	# redhat
    . /etc/bashrc
elif [ -f /etc/bash.bashrc ]; then # debian
    . /etc/bash.bashrc
fi

# source the gapp bashrc
if [ -f /gapp/noarch/share/login/gapp.bashrc ]; then
    . /gapp/noarch/share/login/gapp.bashrc
fi

# source alias file
if [ -f ~/.bash_alias ]; then
    . ~/.bash_alias
fi

# Set prompt to emulate tcsh default
#PS1="\u@\h:\w \!>"
#export MYGPGKEY=2F9338CB

# Personal
#source ~/.bashss 

#[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

function load_dir {
    LOAD_DIR=${1}
    if [ -d $LOAD_DIR -a -r $LOAD_DIR -a -x $LOAD_DIR ]; then
        for i in $LOAD_DIR/*.sh; do
            source $i
        done
    fi
    unset i
}
 
shopt -q login_shell && \
  load_dir ${HOME}/bashrc.d