# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# export ZSH_THEME="robbyrussell"
#export ZSH_THEME="adben-new"
#export ZSH_THEME="nanotech"
#export ZSH_THEME="powerline"
export ZSH_THEME="adben"
#export ZSH_THEME="kennethreitz"
# export ZSH_THEME="kphoen"
DEFAULT_USER="abenedetti"

#Aliases
# Colored cal output
alias cal="cal | grep --color=auto -E '( |^)$(date +)|$'"
# Example aliases
alias emacs="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --alternate-editor /Applications/Emacs.app/Contents/MacOS/Emacs"
alias zshconfig="emacs ~/.zshrc"
alias ohmyzsh="emacs ~/.oh-my-zsh"
alias lrtail="tail -f ~/Dev/liferay-portal-6.1.1-ce-ga2/tomcat-7.0.27/logs/catalina.out"
alias lrinit="sh ~/Dev/liferay-portal-6.1.1-ce-ga2/tomcat-7.0.27/bin/startup.sh && lrtail"
alias lrstop="sh ~/Dev/liferay-portal-6.1.1-ce-ga2/tomcat-7.0.27/bin/shutdown.sh &&  lrtail"
alias lrrestart="sh ~/Dev/liferay-portal-6.1.1-ce-ga2/tomcat-7.0.27/bin/shutdown.sh ; sh ~/Dev/liferay-portal-6.1.1-ce-ga2/tomcat-7.0.27/bin/startup.sh && lrtail"
alias lrmvndeploy="mvn clean package && mvn liferay:deploy"
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
plugins=(ant brew cake compleat dircycle dirpresist encode64 extract gas git git-extras git-hubflow git-flow github git-remote-branch git-fast gnu-utils history history-substring-search lein lighthouse macports mvn nyan osx pip pow phing screen sprunge ssh-agent svn urltools zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Customize to your needs... #PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin:/Users/abenedetti/Dev/Soft/apache-maven-3.1.0/bin:/opt/local/bin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/X11/bin:/Users/abenedetti/Dev/Soft/play:/opt/local/libexec/gnubin:/usr/local/Cellar/android-sdk/r21/bin:/usr/local/go//bin:/Users/abenedetti/bin:/Users/abenedetti/bin/FDK/Tools/osx:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin
#macports preference
#export PATH=$PATH:/opt/local/bin/
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_29-b11-402.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_31-b04-415.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_13.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_38-b04-436.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_35-b10-428.jdk/Contents/Home
#export M2_HOME=/usr/local/Cellar/maven/3.0.4/
#export M2=/usr/local/Cellar/maven/3.0.4/
export M2_HOME=/Users/abenedetti/Dev/Soft/apache-maven-3.1.0
#export PATH=$PATH:$M2_HOME/bin:$M2/bin
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r21.0.1
export GO_HOME=/usr/local/go/
#export LEININGEN_HOME=/Users/abenedetti/git/leiningen
##Path##
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$M2_HOME/bin
#export PATH=/opt/local/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/usr/texbin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/X11/bin
#export PATH=$PATH:$LEININGEN_HOME/bin
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
#update gits
#export EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs -Q -nw'
export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --alternate-editor /Applications/Emacs.app/Contents/MacOS/Emacs"
export VISUAL=${EDITOR}
export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"

