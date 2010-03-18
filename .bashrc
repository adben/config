#######################################################
# Adolfo Benedetti's .bashrc file, 
# based on Dave Crouse's .bashrc www.usalug.org
# www.bashscripts.org
#
# Last Modified 03-08-2010
# Running on LinuxMint Helena
#######################################################


# EXPORTS
#######################################################
CLASSPATH=$CLASSPATH:/usr/share/java/xalan2.jar; export CLASSPATH
PATH=$PATH:/usr/lib/festival/ ;PATH=$PATH:/usr/games/fortune/ ;export PATH
#export JAVA_HOME=/usr/lib/jvm/java-6-sun
#export ANT_HOME=/usr/share/ant
#export JAVA_HOME=/opt/jdk1.6.0_18
#export PATH=$PATH:$JAVA_HOME/bin
##export http_proxy="http://proxycgr.contraloriagen.net:8080/"
##export https_proxy="http://proxycgr.contraloriagen.net:8080/"
##export ftp_proxy="http://proxycgr.contraloriagen.net:8080/"
export EDITOR=/usr/bin/gedit
##export LIFERAY_PORTAL=/Liferay-Portal
##export CATALINA_HOME=/Liferay-Portal/apache-tomcat-6.0.20
##export ECLIPSE_IDE_HOME=/Liferay-Portal/eclipse
#export MOZ_PLUGIN_PATH=~/.mozilla/plugins
export HISTFILESIZE=3000 # the bash history should save 3000 commands
export HISTCONTROL=ignoredups #don't put duplicate lines in the history.
export GOROOT=/media/backup/backups/backup_hd_mar5/soft/go
export GOOS=linux
export GOARCH=386
export GOBIN=/media/backup/backups/backup_hd_mar5/soft/bin
export PATH=$PATH:$GOBIN

alias hist='history | grep $1' #Requires one input

# Define a few Color's
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color
# Sample Command using color: echo -e "${CYAN}This is BASH
# ${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n"
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything
[ -z "$PS1" ] && return
# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color)
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
        ;;
    *)
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    #PS1='[\033[0;0;41m\]\u:\[\033[41;1;33m\]\W\[\033[0;0m\]]\$ '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[1;1;41m\][\u:\[\033[41;1;33m\]\W\[\033[0;0m\]]\$ '
        PS1='${debian_chroot:+($debian_chroot)}\[\033[44;1;37m\][\u : \[\033[44;1;33m\]\W\[\033[44;1;37m\]]\[\033[0;0m\] $ '
        ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
        ;;
    *)
        ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

#some go aliases
alias build-and-go='sh ~/Documents/scripts/build-and-go'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ua='sudo apt-get update;sudo apt-get upgrade;sudo apt-get clean;sudo apt-get autoclean;sudo apt-get autoremove'
#alias susyn = 'sudo synaptic'
alias s='sudo bash'
alias trash='mv -t ~/.local/share/Trash/files --backup=t'

# Alias's to control hardware
alias cdo='eject /dev/cdrecorder'
alias cdc='eject -t /dev/cdrecorder'
alias dvdo='eject /dev/dvd'
alias dvdc='eject -t /dev/dvd'
alias scan='scanimage -L'
alias playw='for i in *.wav; do play $i; done'
alias playo='for i in *.ogg; do play $i; done'
alias playm='for i in *.mp3; do play $i; done'
alias copydisk='dd if=/dev/dvd of=/dev/cdrecorder' # Copies bit by bit from dvd to cdrecorder drives.
alias dvdrip='vobcopy -i /dev/dvd/ -o ~/DVDs/ -l'

# Alias's to modified commands
alias ps='ps auxf'
alias home='cd ~'
alias pg='ps aux | grep'  #requires an argument
alias un='tar -zxvf'
alias mountedinfo='df -hT'
alias ping='ping -c 10'
alias openports='netstat -nape --inet'
alias ns='netstat -alnp --protocol=inet | grep -v CLOSE_WAIT | cut
-c-6,21-94 | tail +2'
alias du1='du -h --max-depth=1'
alias da='date "+%Y-%m-%d %A    %T %Z"'
alias ebrc='gedit ~/.bashrc'

# Alias to multiple ls commands
alias la='ls -Al'               # show hidden files
alias ls='ls -aF --color=always' # add colors and file type extensions
alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'      # sort by change time
alias lu='ls -lur'      # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'

# Alias chmod commands
alias mx='chmod a+x'
alias 000='chmod 000'
alias 644='chmod 644'
alias 755='chmod 755'

# Alias Shortcuts to graphical programs.
alias kwrite='kwrite 2>/dev/null &'
alias firefox='firefox 2>/dev/null &'
alias gaim='gaim 2>/dev/null &'
alias kate='kate 2>/dev/null &'
alias suk='kdesu konqueror 2>/dev/null &'

# Alias xterm and aterm
alias term='xterm -bg AntiqueWhite -fg Black &'
alias termb='xterm -bg AntiqueWhite -fg NavyBlue &'
alias termg='xterm -bg AntiqueWhite -fg OliveDrab &'
alias termr='xterm -bg AntiqueWhite -fg DarkRed &'
alias aterm='aterm -ls -fg gray -bg black'
alias xtop='xterm -fn 6x13 -bg LightSlateGray -fg black -e top &'
alias xsu='xterm -fn 7x14 -bg DarkOrange4 -fg white -e su &'

# Alias for lynx web browser
alias bbc='lynx -term=vt100 http://news.bbc.co.uk/text_only.stm'
alias nytimes='lynx -term=vt100 http://nytimes.com'
alias dmregister='lynx -term=vt100 http://desmoinesregister.com'
alias eltiempo='lynx -term=vt100 http://eltiempo.com'
alias meneame='lynx -term=vt100 http://meneame.net'



# SOME OF MY UNUSED ALIAS's
#######################################################

#alias d='echo "Good Morning Adolfo today's date is"; | espeak

# date +'%A %B %e' | festival --tts;
# alias shrink84='/home/crouse/shrink84/shrink84.sh'
# alias tl='tail -f /var/log/apache/access.log'
# alias te='tail -f /var/log/apache/error.log'

# SOURCED ALIAS'S AND SCRIPTS
#######################################################

### Begin insertion of bbips alias's ###
### source ~/.bbips/commandline/bbipsbashrc
### END bbips alias's ###

# SPECIAL FUNCTIONS
#######################################################

netinfo ()
{
    echo "--------------- Network Information ---------------"
    /sbin/ifconfig | awk /'inet addr/ {print $2}'
    /sbin/ifconfig | awk /'Bcast/ {print $3}'
    /sbin/ifconfig | awk /'inet addr/ {print $4}'
    /sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
    echo "---------------------------------------------------"
}

spin ()
{
    echo -ne "${RED}-"
    echo -ne "${WHITE}\b|"
    echo -ne "${BLUE}\bx"
#sleep .02
    echo -ne "${RED}\b+${NC}"
}

detectlanguage()
{
curl -s "http://ajax.googleapis.com/ajax/services/language/detect?v=1.0&q=$(echo "$@" | sed 's/ /%20/g')" | sed 's/{"responseData": {"language":"\([^"]*\)".*/\1\n/'
}
        
#·translate() 
#taal = curl -s "http://ajax.googleapis.com/ajax/services/language/detect?v=1.0&q=$(echo "$1" | sed 's/ /%20/g')" | sed 's/{"responseData": {"language":"\([^"]*\)".*/\1\n/'
#echo ${taal}
#curl -s "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$(echo "$1" | sed 's/ /%20/g')&langpair=${taal}%7C$2" | sed 's/{"responseData": {"translatedText":"\([^"]*\)"}, .*}/\1\n/'
#}

traductor()
{
curl -s "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$(echo "$1" | sed 's/ /%20/g')&langpair=$2%7C$3" | sed 's/{"responseData": {"translatedText":"\([^"]*\)"}, .*}/\1\n/'
}



pronounce()
{
 wget -qO- $(wget -qO- "http://www.m-w.com/dictionary/$@" | grep 'return au' | sed -r "s|.*return au\('([^']*)', '([^'])[^']*'\).*|http://cougar.eb.com/soundc11/\2/\1|") | aplay -q 
}

psgrep() 
{ 
    if [ ! -z $1 ]; then 
    echo "Grepping for processes matching $1..." 
    echo -e ps aux | grep -i $1 | grep -v grep 
    else echo "!! Need name to grep for" 
    fi 
}

#scpsend ()
#{
#scp -P PORTNUMBERHERE "$@"
#USERNAME@YOURWEBSITE.com:/var/www/html/pathtodirectoryonremoteserver/;
#}


# NOTES
#######################################################

# To temporarily bypass an alias, we preceed the command with a \
# EG:  the ls command is aliased, but to use the normal ls command you would
# type \ls

# mount -o loop /home/crouse/NAMEOFISO.iso /home/crouse/ISOMOUNTDIR/
# umount /home/crouse/NAMEOFISO.iso
# Both commands done as root only.


# WELCOME SCREEN
#######################################################
clear
#for i in 'seq 1 15' ; echo "* "; done ;
echo -ne "${LIGHTRED} Adolfo Benedetti ${NC}";
echo -e ${LIGHTBLUE}; lsb_release -a
echo -e "Kernel Information: "; uname -smr
echo -e ${LIGHTBLUE}; bash --version
echo -ne "Hello $USER today is "; date
#echo -e "${LIGHTRED}"; cal ; echo "";
echo -ne "${CYAN}";netinfo;mountedinfo ; echo ""
echo -ne "${LIGHTBLUE}Uptime for this computer is ";uptime | awk /'up/{print $3,$4}'
echo -ne "${LIGHTRED}";fortune
echo -e "${LIGHTRED}";echo ""; cal ; echo "";

#for i in 'seq 1 15' ; do spin; done ;echo -ne "${LIGHTGRAY} http://kids.philippi.us ${NC}"; for i in 'seq 1 15' ; do spin;done ;echo "";
#echo ""; echo ""
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
# enable programmable completion features
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

