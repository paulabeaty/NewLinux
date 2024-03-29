alias ls='ls -F'
alias m='make'
alias mi='make install'


alias authos='cd $O/pelco/applications/authos'
alias deimos='cd $O/pelco/applications/deimos'
alias rover='cd $O/pelco/applications/rover'
alias ev='cd $O/pelco/applications/ev-compat'
alias fuzz='cd $O/pelco/applications/fuzz'
alias encom='cd $O/pelco/applications/encom'
alias tharsis='cd $O/pelco/applications/tharsis'
alias omons='cd $O/pelco/libraries/omons'
alias jovis='cd $O/pelco/applications/jovis'
alias imaging='cd $O/pelco/applications/imaging3A'
alias img='cd $O/pelco/libraries/imaging3A_lib'
alias mhorn='cd $O/pelco/libraries'
alias mapi='cd $O/pelco/libraries/matterhorn_api/codegen'
alias pelco='cd $O/pelco'
alias apps='cd $O/pelco/applications'
alias libs='cd $O/pelco/libraries'
alias drag='export O=/work/dragonfly;cd $O'
alias work='export O=/work/work_dragonfly;cd $O'
alias one='export O=/work/onemore;cd $O'
alias my='export O=/work/mywork;cd $O'
alias get=git
alias cleanit='sudo git clean -xffd;git reset --hard'


alias ob='ombuild build'
alias oi='ombuild install'

alias git_branch_age='for k in `git branch -a |perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k|head -n 1`\\t$k;done|sort -r'
alias precache9='ombuild -f publish.xml depends configure install -Dboard=A0 -Drev.branch=staging_9280_2.0.0_BLD.0.0'
alias distclean9='ombuild -propertyfile /mnt/wormhole/home/paula/work/staging9280/products/9280/build.conf distclean'
alias config9='ombuild -propertyfile /mnt/wormhole//home/paula/work/staging9280/products/9280/build.conf configure -Dboard=A0'
alias precache8='ombuild -f publish.xml depends configure install -Dboard=A0 -Drev.branch=develop_BLD'
alias distclean8='ombuild -propertyfile /mnt/wormhole/$O/products/8280/build.conf distclean'
alias config8='ombuild -propertyfile /mnt/wormhole/$O/products/8280/build.conf configure -Dboard=A0'

alias sclean='sebu distclean -p 8280'
alias sconfigure='sebu sconfigure -p 8280'
alias sbuild='sebu build -p 8280'
alias sinstall='sebu install -p 8280'

alias pcp2='cd $O/pelco/libraries/pcp2'

alias ungold='gunzip < Golden.xml > Golden.out'
alias untest='gunzip < TestResults.xml > TestResults.out'
alias fix_map='xmodmap ~/.xmodmap'
alias awk-grep='ack-grep -i'
alias okular='evince '
alias gunzip='unzip'

alias omv='omverse -b /mnt/wormhole/`pwd`'

alias un='cd ~/avo/unity'
alias un='export A=/home/pbeaty/avo/unity;cd $A'
alias un1='export A=/home/pbeaty/avo/unity1;cd $A'
alias im='cd $A/Apps/Imaging3A'
alias ca='cd $A/Apps/CameraApp'
alias hal='cd $A/Apps/Imaging3A/Arch/cv22/Hal/src/Hal/Amba/Sdk'
alias hali='cd $A/Apps/Imaging3A/Arch/cv22/Hal/include/Hal/Amba/Sdk'
alias sys='cd $A/Apps/Imaging3A/Sys/src/Sys'
alias sysi='cd $A/Apps/Imaging3A/Sys/include/Sys'
alias cam='cd $A/Apps/Imaging3A/Arch/cv22/Target/t800/Hal/src/Hal'
alias cami='cd $A/Apps/Imaging3A/Arch/cv22/Target/t800/Hal/include/Hal'
alias config='tools/ub config t800 --cmake-args -DAAA_IMPLEMENTATION:STRING=Unity'
alias disable_nfs='tools/ub nfs_setup t800 10.66.5.160 --remove --apply'
alias enable_nfs='tools/ub nfs_setup t800 10.66.5.160 --apply'

alias int='cd $A/Apps//CameraApp'
alias pipc='cd $A/Apps/Imaging3A/Ipc/src/Ipc'

alias az='az login && az acr login --name ciedevelop'
