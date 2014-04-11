# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# ===== Basics
setopt no_beep # don't beep on error
setopt interactive_comments # Allow comments even in interactive shells (especially for Muness)

# ===== Changing Directories
setopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt cdablevarS # if argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
setopt pushd_ignore_dups # don't push multiple copies of the same directory onto the directory stack

# ===== Expansion and Globbing
setopt extended_glob # treat #, ~, and ^ as part of patterns for filename generation

# ===== History
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration
setopt inc_append_history # Add comamnds as they are typed, don't wait until shell exit
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_ignore_space # remove command line from history list when first character on the line is a space
setopt hist_find_no_dups # When searching history don't display results already cycled through twice
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
setopt hist_verify # don't execute, just expand history
setopt share_history # imports new commands and appends typed commands to history

# ===== Completion 
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word    
setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # Allow completion from within a word/phrase

unsetopt menu_complete # do not autoselect the first completion entry

# ===== Correction
setopt correct # spelling correction for commands
setopt correctall # spelling correction for arguments

# ===== Prompt
setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt transient_rprompt # only show the rprompt on the current prompt

# ===== Scripts and Functions
setopt multios # perform implicit tees or cats when multiple redirections are attempted
# ===== debug
# setopt XTRACE VERBOSE


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# export ZSH_THEME="robbyrussell"
#export ZSH_THEME="adben-new"
#export ZSH_THEME="nanotech"
#export ZSH_THEME="powerline"
export ZSH_THEME="agnoster"
#export ZSH_THEME="kennethreitz"
#export ZSH_THEME="kphoen"
#export ZSH_THEME="adben"
#export ZSH_THEME="pure"
DEFAULT_USER="abenedetti"

#Aliases
# Colored cal output
alias cal="cal | grep --color=auto -E '( |^)$(date +)|$'"
alias hoy="date +%F"
# Example aliases
alias emacs="/usr/local/Cellar/emacs/HEAD/bin/emacsclient --alternate-editor /usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs"
alias zshconfig="emacs ~/.zshrc"
alias ohmyzsh="emacs ~/.oh-my-zsh"
#some project liferay
LIFERAY_CURRENT="liferay-portal-6.1.2-ce-ga3"
alias lrtail="multitail /Users/abenedetti/Dev/${LIFERAY_CURRENT}/logs/liferay.$(hoy).log /Users/abenedetti/Dev/${LIFERAY_CURRENT}/tomcat-7.0.40/logs/catalina.out "
alias lrinit="sh /Users/abenedetti/Dev/${LIFERAY_CURRENT}/tomcat-7.0.40/bin/startup.sh"
alias lrdebug="sh /Users/abenedetti/Dev/${LIFERAY_CURRENT}/tomcat-7.0.40/bin/debug.sh"
alias lrstop="sh /Users/abenedetti/Dev/${LIFERAY_CURRENT}/tomcat-7.0.40/bin/shutdown.sh"
alias lrrestart="lrstop && sleep 20 && lrinit"
alias lrmvndeploy="mvn clean package && mvn liferay:deploy"
#for emacs
alias rmoldelc="cd ~/.emacs.d/ && find . -type f -name \"*.elc\" -exec rm -fv {} \;"
alias compileelcs="cd ~/.emacs.d/ && /usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs --batch -f batch-byte-compile **/*.el ;"
alias optimizeemacs="rmoldelc && sleep 4 && compileelcs"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias bower="noglob bower"
alias seleniumstart="java -jar /usr/local/Cellar/selenium-server-standalone/2.39.0/selenium-server-standalone-2.39.0.jar -log /Users/abenedetti/log/selenium.log"
alias pginit="postgres -D /usr/local/var/postgres"
##alias protractor="/usr/local/share/npm/bin/protractor"
## Git graph alias soruce http://stackoverflow.com/questions/1057564/pretty-git-branch-graphs
##alias lg1="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold white)— %an%C(reset)%C(bold yellow)%d%C(reset)' --abbrev-commit --date=relative"
##alias lg2="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(bold white)— %an%C(reset)' --abbrev-commit"
#alias lg=!"git lg1"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=10

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to show the commandline tip in the adben's theme
ENABLE_COMMAND_TIP="false"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

#necesary for my theme
SVN_SHOW_BRANCH="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(ant apache2-macports bower brew bundler capistrano coffee colored-man colorize command-not-found compleat composer copydir copyfile cp cpanm dircycle docker emoji-clock encode64 extract fabric fasd forklift gas gem git git-extras git-flow git-flow-avh git-hubflow gitfast github gitignore gnu-utils go golang gradle grails heroku history jake-node jira jump lein lighthouse lol macports mix mvn mysql-macports nanoc node nvm osx perl pod postgres pow python rand-quote redis-cli repo rsync safe-paste screen singlechar sprunge ssh-agent svn systemadmin terminalapp tmuxinator urltools vagrant wd web-search z)
# plugins=(git)
source $ZSH/oh-my-zsh.sh

# Customize to your needs... #PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin:/Users/abenedetti/Dev/Soft/apache-maven-3.1.0/bin:/opt/local/bin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/X11/bin:/Users/abenedetti/Dev/Soft/play:/opt/local/libexec/gnubin:/usr/local/Cellar/android-sdk/r21/bin:/usr/local/go//bin:/Users/abenedetti/bin:/Users/abenedetti/bin/FDK/Tools/osx:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin
# next line should be in the ~/.zshenv 
#export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_15.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_65-b14-462.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
export M2_HOME=/Users/abenedetti/Dev/Soft/apache-maven
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/22.2
export GO_HOME=/usr/local/Cellar/go/1.2.1
export GOPATH="/Users/abenedetti/go"
export GORACE=""
export GOROOT=$GO_HOME
#export GOROOT="/usr/local/bin/go"
export LEININGEN_HOME=/Users/abenedetti/git/leiningen
export SVN_HOME=/opt/subversion
##Path##
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$SVN_HOME/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/usr/texbin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/X11/bin
export PATH=$PATH:$LEININGEN_HOME/bin
export PATH=$PATH:/Users/abenedetti/Dev/Soft/play
export PATH=$PATH:/opt/local/libexec/gnubin
export PATH=$PATH:$ANDROID_SDK_ROOT/bin
export PATH=$PATH:$GO_HOME/bin
export PATH=$PATH:~/bin
export PATH=$PATH:/Users/abenedetti/bin/FDK/Tools/osx
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/git/depot_tools
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/Users/abenedetti/Dev/Soft/mongodb-osx-x86_64-2.4.4/bin
### Added by the Heroku Toolbelt
export PATH=$PATH:/usr/local/heroku/bin
#update gits
#export EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs -Q -nw'
export EDITOR="emacsclient --alternate-editor /Applications/Emacs.app/Contents/MacOS/Emacs"
export VISUAL=${EDITOR}
export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
export CP_CONFIG="/Users/abenedetti/Documents/iprofs/shl/project/cp-config/src/main/resources/local-dev/"
export CP_LOGS="/Users/abenedetti/Documents/iprofs/shl/current/logs/"
