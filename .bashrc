# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# This might be helpful for Linux newbies who previously used DOS...
test -f /etc/profile.dos && . /etc/profile.dos

#PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
#PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
#PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}          \007"'

PS1="\\u:\\w\$ "
#PS1="\\h:\\w\$ "
#PS1="\\u@\h:\\$ "
export DISPLAY LESS PS1 PS2
export PYTHONPATH=/usr/lib/ooo-2.0/program

# Robert helped me create this file to be run once when logging in.
# Whenever I need something to be run just once for X, put in this file
# This was needed on ubuntu, but likely not necessary for SuSE.
export USERXSESSIONRC=$HOME/.xsessionrc

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

#-------------------------------------------------------------------
# distcc
#-------------------------------------------------------------------
#export DISTCC_HOSTS="@wood localhost"
test -s ~/.alias && . ~/.alias

export O=/work/dragonfly
#export B=/data/Badger
#export BADGER=~/.tda:$B:$B/etc/Graphics/:$B/etc/icons:$B/etc/Bindings::$B/doc/public/Tego
#export BADGER_COMPILER_OPT=debug
#export BADGER_OVERLAYS=1
#export DISTCC_SSH=`which ssh`
export SVN_EDITOR=vi

export CVS_RSH=ssh
. ~/.bash_aliases

ulimit -c unlimited

umask 002

PATH=$PATH:/opt/omtools/bin:~/local/bin

function vg
{
   valgrind             \
   --num-callers=15     \
   --error-limit=no     \
   --tool=memcheck      \
   --leak-check=yes     \
   --verbose            \
   --show-reachable=yes \
   --suppressions=/data/Badger/Private/etc/vg-suppress \
   --log-file=./valgrind.out \
   --trace-children=yes $*
}


function clean {
    sudo rm -rf ./.build_out ./.publish ./results ./.scratch ./ivy-report.* ~/omons-mhorn/__Build_*/ .ivy/ /opt/omtools/omverse/root/.ivy2;
}
