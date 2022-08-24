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

PS1="\\W\$ "
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
export A=/home/pbeaty/avo/unity
#export DISTCC_SSH=`which ssh`
export SVN_EDITOR=vi

export CVS_RSH=ssh
. ~/.bash_aliases

ulimit -c unlimited

umask 002

PATH=$PATH:/opt/omtools/bin:~/local/bin
PATH=~/bin:/work/dragonfly/build-tools/build-commands:$PATH
PATH=$PATH:~/avo/int/tools

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
# \[\e[0m\] resets the color to default color
reset_color='\[\e[0m\]'
#  \[\033[33m\] sets the color to yellow
path_color='\[\033[33m\]'
# \e[0;32m\ sets the color to green
git_clean_color='\[\e[0;32m\]'
# \e[0;31m\ sets the color to red
git_dirty_color='\[\e[0;31m\]'

# determines if the git branch you are on is clean or dirty

export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
if (length($0) > 20) { if (NF>4) print $1 "/" $2 "/" $3 "/.../" $NF;
else if (NF>3) print $1 "/" $2 "/" $3 "/.../" $NF;
else print $1 "/.../" $NF; }
else print $0;}'"'"')'
PS1='$(eval "echo ${MYPS}")$ '
# DistCC variables
export UB_DISTCC_REGION=FortCollins
export UB_DISTCC_REPO_PATH=/home/pbeaty/avo/VSA-Firmware_distcc-config
