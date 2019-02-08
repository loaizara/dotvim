#Los alias de Testware
# /etc/bash_completion.d/git
#PS1='\u@\h\w$(__git_ps1 " (%s)"): '
#GIT_PS1_SHOWUPSTREAM=auto
source /tools/git/production/completion/git-completion.bash
alias pman='$TESTWARE/tools/pm/pmg/pmg.sh &'
#alias challenge='tclsh /users/*<username>/*Desktop/Challenge.tcl $1'
http_proxy=http://web-proxy.rose.hp.com:8088
alias eclp='/tools/eclipse_3.7.2/eclipse -vmargs -Xms512m -Xmx1024m -XX:MaxPermSize=1024m &'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


#Mis alias para la los folders
alias lla='ls -lha'
alias ll='ls -lh'

#PATH=/pnb/software/attools/bin/ActivePerl-5.10/bin:/pnb/software/attools/bin/ActiveTcl/bin:/pnb/software/attools/bin/emacs/bin:/tools:/tools:/tools/eclipse_3.7.2:/pnb/software/attools/bin/iTest:/pnb/software/attools/bin/iTest/iTestRT:/pnb/software/attools/bin/CollabNet_Subversion/bin:/pnb/software/attools/bin/bin/CollabNet_Subversion/bin:/opt/eclipse:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/tools/slickedit/Latest/bin:/pnb/software/attools/bin/ActivePython-2.7.2/bin





alias cdt5b="cd /pnb/software/release/titan5_v15_b/official"
export BASE_DIR=/pnb/software/attools/bin
export LD_LIBRARY_PATH=$BASE_DIR/bin/CollabNet_Subversion/lib
export IXIA_HOME="$BASE_DIR/IxOS"
export IXIA_VERSION=6.70.1050.16
export IXNETWORK_HOME="$IXIA_HOME/lib/IxTclNetwork"
export TCLLIBPATH="$IXIA_HOME/lib $BASE_DIR/ActiveTcl/lib $IXIA_HOME/lib/IxTclNetwork"
export TCL_LIBRARY=$BASE_DIR/ActiveTcl/lib
export LD_LIBRARY_PATH=$BASE_DIR/CollabNet_Subversion/lib
#Perl stuff
export PERL_BASE=$BASE_DIR/ActivePerl-5.10
export PERL_LIB=$PERL_BASE/lib
export PATH=$PERL_BASE/bin:$BASE_DIR/ActiveTcl/bin:/pnb/software/attools/bin/emacs/bin:/tools:$PATH
alias eclp=/tools/eclipse_3.7.2/eclipse

#Halon FW
export TESTWARE=/pnb/software/at/sand00/loaizara/testware
export FT_FRAMEWORK_BASE=/ws/loaizara/openSwitchFW/ops-ft-framework
export FT_FRAMEWORK_ENT=/ws/loaizara/enterpriseSwitchFW/rtl-ft-framework
#export PYTHONPATH=$FT_FRAMEWORK_BASE:$FT_FRAMEWORK_ENT:/ws/loaizara/openSwitchFW/ops-vsi/opsvsi
export PATH=/pnb/software/attools/bin/ActivePython-2.7/bin:$PATH
export PYTHONPATH=~/eggDir/opstestfw:~/eggDir/rtltestfw:~/eggDir/opsvsi

alias listMinTC='ht -s LEVEL1_VIRTUAL,LEVEL1_AS5712,LEVEL1_P4,LEVEL1_8400,LEVEL2_VIRTUAL,LEVEL2_AS5712,LEVEL2_P4,LEVEL2_8400,LEVEL3_VIRTUAL,LEVEL3_AS5712,LEVEL3_8400,LEVEL3_P4 -t ?'
alias listTestJobs='ht -s LEVEL1_VIRTUAL,LEVEL1_AS5712,LEVEL1_P4,LEVEL1_8400,LEVEL2_VIRTUAL,LEVEL2_AS5712,LEVEL2_8400,LEVEL2_P4,LEVEL3_VIRTUAL,LEVEL3_AS5712,LEVEL3_8400,LEVEL3_P4 -t ?+'
alias lookTestJobs='ht -s LEVEL1_VIRTUAL,LEVEL1_8400,LEVEL1_AS5712,LEVEL1_P4,LEVEL2_VIRTUAL,LEVEL2_AS5712,LEVEL2_P4,LEVEL2_8400,LEVEL3_VIRTUAL,LEVEL3_AS5712,LEVEL3_8400,LEVEL3_P4 -t ? | grep -i "Suite\|'
alias fullTest='ht -t ?+ | grep '
#export TARGETBUILD=http://archive.hpnos.io/artifacts/0.1.0+2015091412/as5712/onie-installer-x86_64-as5712_54x-0.1.0+2015091412



#et a fancy prompt (non-color, unless we know we "want" color)
shopt -s checkwinsize

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ -f /etc/bash_completion.d/git ]
then
   . /etc/bash_completion.d/git
fi

LS_COLORS=$LS_COLORS:'*.py=0;36:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'di=0;31:' ; export LS_COLORS
	
alias ftox='tox -- --topology-platform=ostl -s -k '
alias la='ls -lha'
alias ll='ls -lh'
alias rtox='tox -r'
alias utox='tox -- --topology-platform=docker -s -k '
alias ftox='tox -- --topology-platform ostl  --ostl-lab OSTL --ostl-destroy false --ostl-cleanup true -s -k '
alias sdocker='docker stop $(docker ps -aq)'
alias rdocker='docker rm $(docker ps -aq)'
alias cgit='git commit -s'
alias agit='git add --update'
alias pgit='git push'
alias ugit='git pull'
alias fgit='git fetch --all'
alias sgit='git status -s'
alias dgit='git diff'
alias ggit='git checkout'
alias lgit="git log --graph --color --pretty=format:'%C(cyan)%h%Creset -%Creset %s%C(yellow)%d %Creset %C(magenta)(%aN, %cr)%Creset' --abbrev-commit --date=relative"
alias sus='sudo su'
alias hgit='git reset --hard @{u}'
alias gfollow='git log --follow '
alias gshow='git show --pretty=fuller --name-status '
alias rid='cd /ws/loaizara/'
alias ..='cd ..'
alias runOPS='docker run --privileged -v /tmp:/tmp -v /dev/log:/dev/log -v /sys/fs/cgroup:/sys/fs/cgroup -h ops1 --name ops1 topology/ops /sbin/init &'
alias goOPS='docker exec -ti ops1 bash' 
alias gLook='git log --pretty=fuller --name-status --follow '
alias cclear='clear | clear'

function parse_git_branch () {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
   }
 
 
if [ "$color_prompt" = yes ]; then
	PS1='$(parse_git_branch)\[\e[01;37m${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '
else
	PS1='$(parse_git_branch)\[\e[01;37m${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
	unset color_prompt force_color_prompt
