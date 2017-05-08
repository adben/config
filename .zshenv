
# Customize to your needs... #PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin:/Users/adolfobenedetti/Dev/Soft/apache-maven-3.1.0/bin:/opt/local/bin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/X11/bin:/Users/adolfobenedetti/Dev/Soft/play:/opt/local/libexec/gnubin:/usr/local/Cellar/android-sdk/r21/bin:/usr/local/go//bin:/Users/adolfobenedetti/bin:/Users/adolfobenedetti/bin/FDK/Tools/osx:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin
# next line should be in the ~/.zshenv
#export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export M2_HOME=/usr/local/Cellar/maven/3.5.0/libexec
export M2=$M2_HOME/bin
export ANDROID_HOME=/usr/local/opt/android-sdk
#export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/24.3.4
export GO_HOME=/usr/local/opt/go/libexec/
export GOPATH="/Users/adolfo/go"
export GORACE=""
export NODE_PATH="/usr/local/lib/node_modules/"
export PHANTOMJS_BIN="/usr/local/lib/node_modules/phantomjs"

export GOROOT=$GO_HOME
#export GOROOT="/usr/local/bin/go"
#Disabled anaconda, brew compatibility
#export PATH=$HOME/bin/anaconda3/bin
export PATH=/usr/local/opt/node@6/bin:$PATH
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rbenv/versions/2.1.5/bin
export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin
export PATH=$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin
export PATH=$PATH:$GO_HOME/bin
export PATH=$PATH:$M2
export PATH=$PATH:$SVN_HOME/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/texbin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/opt/local/libexec/gnubin
export PATH=$PATH:$ANDROID_HOME/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/m-cli
export PATH=$PATH:/Users/adolfo/bin/FDK/Tools/osx
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin
export PATH=$PATH:$HOME/git/depot_tools
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin
export PATH=$PATH:/usr/local/opt/tomcat@7/bin
#export EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs -Q -nw'
#export EDITOR='atom'
export EDITOR="emacsclient --alternate-editor /Applications/Emacs.app/Contents/MacOS/Emacs"
export VISUAL=${EDITOR}
export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
#AWS
export EC2_REGION="eu-west-1"
source /usr/local/share/zsh/site-functions/_aws
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Avoids the ValueError: unknown locale: UTF-8 at localy.py
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adolfo/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/adolfo/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adolfo/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/adolfo/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
