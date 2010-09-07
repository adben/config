#######################################################
# Adolfo Benedetti's .bashrc file, 
# adolfo.benedetti@gmail.com
# a.benedetti@sourcesense.com
# based on Dave Crouse's .bashrc www.usalug.org
# www.bashscripts.org
# Last Modified sep 3 2010
# Running on ubuntu 10.10 beta1
#######################################################
# EXPORTS
#######################################################
CLASSPATH=$CLASSPATH:/usr/share/java/xalan2.jar; export CLASSPATH
PATH=$PATH:/usr/lib/festival/ ;PATH=$PATH:/usr/games/fortune/ ;export PATH
export JAVA_HOME=/usr/lib64/jvm/default-java
export JDK_HOME=/usr/lib64/jvm/java-6-openjdk
export ANT_HOME=/usr/share/ant
#export JAVA_HOME=/opt/jdk1.6.0_18
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.frameworkVersions/CurrentJDK/Home #java in osx
export PATH=$PATH:$JDK_HOME/bin
export PATH=$PATH:$ANT_HOME/bin
##export http_proxy="http://proxycgr.contraloriagen.net:8080/"
##export https_proxy="http://proxycgr.contraloriagen.net:8080/"
##export ftp_proxy="http://proxycgr.contraloriagen.net:8080/"
##export EDITOR=/usr/bin/gedit
export EDITOR=/home/adben/soft/emacs/bin/emacs
##export LIFERAY_PORTAL=/Liferay-Portal
##export CATALINA_HOME=/Liferay-Portal/apache-tomcat-6.0.20
##export ECLIPSE_IDE_HOME=/Liferay-Portal/eclipse
#export MOZ_PLUGIN_PATH=~/.mozilla/plugins
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
#
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

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
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

#More EXPORTS
#for golang
export GOROOT=$HOME/soft/go
export GOOS=linux
export GOARCH=386
export GOBIN=$HOME/bin
export PATH=$PATH:$GOBIN
#export MAVEN_OPTS="-Xmx256m -Xms128m"
export MAVEN_OPTS='-Xms128m -Xmx256m -XX:PermSize=128m -XX:-UseGCOverheadLimit'
#export MAVEN_OPTS='-Xms128m -Xmx512m -XX:PermSize=128m -XX:-UseGCOverheadLimit -Dwicket.configuration=development' ##debug wicket oneHippo
##export MAVEN_OPTS='-Xms128m -Xmx700m -XX:PermSize=128m -XX:-UseGCOverheadLimit'
##maven customizations
# Formatting constantsqquit
## let's work with maven colorized, new colors for sed
export BOLD=`tput bold`
export UNDERLINE_ON=`tput smul`
export UNDERLINE_OFF=`tput rmul`
export TEXT_BLACK=`tput setaf 0`
export TEXT_RED=`tput setaf 1`
export TEXT_GREEN=`tput setaf 2`
export TEXT_YELLOW=`tput setaf 3`
export TEXT_BLUE=`tput setaf 4`
export TEXT_MAGENTA=`tput setaf 5`
export TEXT_CYAN=`tput setaf 6`
export TEXT_WHITE=`tput setaf 7`
export BACKGROUND_BLACK=`tput setab 0`
export BACKGROUND_RED=`tput setab 1`
export BACKGROUND_GREEN=`tput setab 2`
export BACKGROUND_YELLOW=`tput setab 3`
export BACKGROUND_BLUE=`tput setab 4`
export BACKGROUND_MAGENTA=`tput setab 5`
export BACKGROUND_CYAN=`tput setab 6`
export BACKGROUND_WHITE=`tput setab 7`
export RESET_FORMATTING=`tput sgr0`
# Wrapper function for Maven's mvn command.
mvn-color()
{
  # Filter mvn output using sed
  # mvn $@ | sed -e "s/\(\[INFO\]\ \-.*\)/${TEXT_BLUE}${BOLD}\1/g" \
  #              -e "s/\(\[INFO\]\ \[.*\)/${RESET_FORMATTING}${BOLD}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[INFO\]\ BUILD SUCCESSFUL\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[INFO\]\ Start.*\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[WARNING\].*\)/${BOLD}${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[ERROR\].*\)/${BOLD}${TEXT_RED}\1${RESET_FORMATTING}/g" \
  #              -e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${BOLD}${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${BOLD}${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${BOLD}${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${BOLD}${TEXT_YELLOW}\4${RESET_FORMATTING}/g"
    mvn $@ | sed -e "s/\(\[INFO\]\ \-.*\)/${BACKGROUND_WHITE}${TEXT_BLUE}\1/g" \
        -e "s/\(\[INFO\]\ \[.*\)/${RESET_FORMATTING}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[INFO\]\ BUILD SUCCESSFUL\)/${BACKGROUND_BLACK}${TEXT_CYAN}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[INFO\]\ Start.*\)/${BACKGROUND_BLACK}${TEXT_CYAN}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[WARNING\].*\)/${BACKGROUND_BLACK}${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[ERROR\].*\)/${BACKGROUND_WHITE}${TEXT_RED}\1${RESET_FORMATTING}/g" \
        -e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${TEXT_CYAN}\4${RESET_FORMATTING}/g"
    
  # Make sure formatting is reset
    echo -ne ${RESET_FORMATTING}
}

#Also for debuggins
mvnDebug-color()
{
  # Filter mvn output using sed
  # mvn $@ | sed -e "s/\(\[INFO\]\ \-.*\)/${TEXT_BLUE}${BOLD}\1/g" \
  #              -e "s/\(\[INFO\]\ \[.*\)/${RESET_FORMATTING}${BOLD}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[INFO\]\ BUILD SUCCESSFUL\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[INFO\]\ Start.*\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[WARNING\].*\)/${BOLD}${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
  #              -e "s/\(\[ERROR\].*\)/${BOLD}${TEXT_RED}\1${RESET_FORMATTING}/g" \
  #              -e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${BOLD}${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${BOLD}${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${BOLD}${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${BOLD}${TEXT_YELLOW}\4${RESET_FORMATTING}/g"
    mvnDebug $@ | sed -e "s/\(\[INFO\]\ \-.*\)/${BACKGROUND_WHITE}${TEXT_BLUE}\1/g" \
        -e "s/\(\[INFO\]\ \[.*\)/${RESET_FORMATTING}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[INFO\]\ BUILD SUCCESSFUL\)/${BACKGROUND_BLACK}${TEXT_CYAN}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[INFO\]\ Start.*\)/${BACKGROUND_BLACK}${TEXT_CYAN}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[WARNING\].*\)/${BACKGROUND_BLACK}${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
        -e "s/\(\[ERROR\].*\)/${BACKGROUND_WHITE}${TEXT_RED}\1${RESET_FORMATTING}/g" \
        -e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${TEXT_CYAN}\4${RESET_FORMATTING}/g"
    
  # Make sure formatting is reset
    echo -ne ${RESET_FORMATTING}
}

# Override the mvn command with the colorized one.
alias mvn="mvn-color"
# Override the mvnDebug command with the colorized one.
alias mvnDebug="mvnDebug-color"

alias hist='history | grep $1' #Requires one input


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
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

if [ "$color_prompt" = yes ]; then
   # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    if [ $UID -eq "0" ]; then
	PS1="\[\e[0;34m\][\[\e[0;31m\]\u\[\e[0;34m\]@\[\e[0;31m\]\h\[\e[0;34m\]] \[\e[0;35m\]- \[\e[0;34m\][\[\e[0;31m\]\t\[\e[0;34m\]] \[\e[0;35m\]- \[\e[0;34m\][\[\e[0;31m\]\j \s\[\e[0;34m\]] \n[\[\e[0;31m\]\w\[\e[0;34m\]]\[\e[0;36m\] \$:>\[\e[0m\] "
    else
	PS1="\[\e[0;34m\][\[\e[0;33m\]\u\[\e[0;34m\]@\[\e[0;33m\]\h\[\e[0;34m\]] \[\e[0;35m\]- \[\e[0;34m\][\[\e[0;33m\]\t\[\e[0;34m\]] \[\e[0;35m\]- \[\e[0;34m\][\[\e[0;33m\]\j \s\[\e[0;34m\]] \n[\[\e[0;33m\]\w\[\e[0;34m\]]\[\e[0;36m\]\$:>\[\e[0m\] "

    fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
    *)
	;;
esac

#######################################################
# Aliases
#######################################################

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi




# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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
    alias ls='ls -G'
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'
fi

#mac features
alias starwars='telnet towel.blinkenlights.nl'
alias kijk='qlmanage -p '
alias tree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/ /" -e "s/-/|/"'


#some go aliases
alias build-and-go='sh ~/Documents/scripts/build-and-go'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ua='sudo apt-get update;sudo apt-get upgrade;sudo apt-get clean;sudo apt-get autoclean;sudo apt-get autoremove'

# alias for my external ip
alias ipext='curl -s ip.appspot.com'

#some aliases with git --- see peepcode/git stuff but see magit too
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'

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
alias ps='ps aux'
alias home='cd ~'
alias pg='ps aux | grep'  #requires an argument
alias un='tar -zxvf'
alias mountedinfo='df'
alias ping='ping -c 10'
alias openports='netstat -nape --inet'
alias ns='netstat -alnp --protocol=inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail +2'
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
### source ~/.bbips/commandline/bbipsbashrc ##good stuff
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
##    echo -e "external ip: "; curl -s ip.appspot.com #sometimes hangs the startup of bash, waiting for the response, better in a ALIAS
    echo "---------------------------------------------------"
}

spin ()
    {
        echo -ne "${RED}-"
        echo -ne "${WHITE}\b|"
        echo -ne "${BLUE}\bx"
        sleep .02
        echo -ne "${RED}\b+${NC}"
    }

# cool stuff from googleapis, translate service, word language detection, pronounce, etc.

    detectlanguage()
    {
        curl -s "http://ajax.googleapis.com/ajax/services/language/detect?v=1.0&q=$(echo "$@" | sed 's/ /%20/g')" | sed 's/{"responseData": {"language":"\([^"]*\)".*/\1\n/'
    }

    translate()
    { 
        taal = curl -s "http://ajax.googleapis.com/ajax/services/language/detect?v=1.0&q=$(echo "$1" | sed 's/ /%20/g')" | sed 's/{"responseData": {"language":"\([^"]*\)".*/\1\n/'
        echo ${taal}
        curl -s "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$(echo "$1" | sed 's/ /%20/g')&langpair=${taal}%7C$2" | sed 's/{"responseData": {"translatedText":"\([^"]*\)"}, .*}/\1\n/'
    }

    traductor()
    {
        curl -s "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$(echo "$1" | sed 's/ /%20/g')&langpair=$2%7C$3" | sed 's/{"responseData": {"translatedText":"\([^"]*\)"}, .*}/\1/'
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

#######################################################
# NOTES
#######################################################

# To temporarily bypass an alias, we preceed the command with a \
# EG:  the ls command is aliased, but to use the normal ls command you would
# type \ls

# mount -o loop /home/adben/NAMEOFISO.iso /home/adben/ISOMOUNTDIR/
# umount /home/adben/NAMEOFISO.iso
# Both commands done as root only.


# WELCOME SCREEN
#######################################################
    clear
#for i in 'seq 1 15' ; echo "* "; done ;
#echo -ne "${LIGHTRED} Adolfo Benedetti ${NC}";
    echo -ne " Adolfo Benedetti's linux station"; echo "";
    echo -e ${LIGHTBLUE}; lsb_release -d
    echo -e "Kernel Information: "; uname -smr
    echo -e ${LIGHTBLUE}; bash --version
    echo -ne "${CYAN}";netinfo;mountedinfo ; echo ""
    echo -ne "Hello $USER today is "; date
    echo -e "${LIGHTRED}"; cal;
#echo -e  cal ; echo "";
#echo cal ; echo "";
#netinfo; echo ""; mountedinfo ; 
#echo -n netinfo;mountedinfo ; echo 
#echo -ne "Uptime for this computer is ";uptime | awk /'up/{print $3}'
    echo -ne "${LIGHTBLUE}Uptime for this computer is ";uptime | awk /'up/{print $3,$4}'
    echo -ne "${LIGHTRED}";fortune; echo "";
#echo -e "${LIGHTRED}";echo ""; cal ; echo "";
#echo ""; cal ; echo ""; bash -version
#for i in 'seq 1 15' ; do spin; done ;echo -ne "${LIGHTGRAY} ?? ${NC}"; for i in 'seq 1 15' ; do spin;done ;echo "";
#echo ""; echo ""
# Source global definitions

    if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
    fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
    if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
        . /etc/bash_completion
    fi
