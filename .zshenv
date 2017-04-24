
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
##Path##
export PATH=$HOME/bin/anaconda3/bin:/usr/local/bin:$PATH

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rbenv/versions/2.1.5/bin
export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin
export PATH=$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin
export PATH=$PATH:$GO_HOME/bin
export PATH=$PATH:$M2
export PATH=$PATH:$SVN_HOME/bin
export PATH=$PATH:/opt/local/bin
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
export PATH=$PATH:/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
export PATH=$PATH:/Applications/Xcode-beta.app/Contents/Developer/usr/bin
export PATH=$PATH:$HOME/git/depot_tools
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
### Added by the Heroku Toolbelt
export PATH=$PATH:/usr/local/heroku/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adolfo/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/adolfo/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adolfo/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/adolfo/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
