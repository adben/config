# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="robbyrussell"
export ZSH_THEME="adben-new"
#export ZSH_THEME="kennethreitz"
# export ZSH_THEME="kphoen"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew osx ant macports git git-flow github lighthouse maven-zsh-completion lein zsh-syntax-highlighting ssh-agent svn compleat dirpresist extract lein phing history-substring-search gnu-utils translate gas svn)
source $ZSH/oh-my-zsh.sh
#macports preference
#export PATH=$PATH:/opt/local/bin/
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_29-b11-402.jdk/Contents/Home
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
#export M2_HOME=/usr/local/Cellar/maven/3.0.4/
#export M2=/usr/local/Cellar/maven/3.0.4/
export M2_HOME=/Users/abenedetti/Dev/Soft/apache-maven-3.0.4
#export PATH=$PATH:$M2_HOME/bin:$M2/bin
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r18
export GO_HOME=/usr/local/go/
export LEININGEN_HOME=/Users/abenedetti/git/leiningen
##Path##
export PATH=/opt/local/bin
export PATH=$PATH:$M2_HOME/bin
#export PATH=/opt/local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/X11/bin
export PATH=$PATH:$LEININGEN_HOME/bin
export PATH=$PATH:/Users/abenedetti/Dev/Soft/play
export PATH=$PATH:/opt/local/libexec/gnubin
export PATH=$PATH:$ANDROID_SDK_ROOT/bin
export PATH=$PATH:$GO_HOME/bin
#update gits
