
# Customize to your needs... #PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin:/Users/adolfobenedetti/Dev/Soft/apache-maven-3.1.0/bin:/opt/local/bin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/X11/bin:/Users/adolfobenedetti/Dev/Soft/play:/opt/local/libexec/gnubin:/usr/local/Cellar/android-sdk/r21/bin:/usr/local/go//bin:/Users/adolfobenedetti/bin:/Users/adolfobenedetti/bin/FDK/Tools/osx:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin
# next line should be in the ~/.zshenv
#export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home
export NODE_HOME=/usr/local/opt/node
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export INTEL_HAXM_HOME=/usr/local/Caskroom/intel-haxm
export GO_HOME=/usr/local/opt/go/libexec/
export PYTHON_HOME=/usr/local/opt/python/libexec/
export GOPATH=$HOME/go
export GORACE=''
export KINDLEGEN_HOME=/Users/adben/Downloads/KindleGen_Mac_i386_v2_9
export GOROOT=$GO_HOME
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rbenv/versions/2.1.5/bin

export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin
export PATH=$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin
export PATH=$PATH:$GO_HOME/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/texbin

export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$PATH:$PYTHON_HOME/bin

# export PATH=$ANDROID_HOME/build-tools/23.0.1:$PATH
export PATH=$PATH:$NODE_HOME/bin
export PATH=$PATH:$KINDLEGEN_HOME/kindlegen
export PATH=$PATH:/usr/local/m-cli
export PATH=$PATH:/usr/local/opt/qt/bin
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin
export EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
#export EDITOR="emacsclient --alternate-editor /Applications/Emacs.app/Contents/MacOS/Emacs"
export VISUAL=${EDITOR}
export ALTERNATE_EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs'
export SBT_OPTS='-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M'
#AWS
export EC2_REGION='eu-west-1'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#Tasks
export BREWS='brew -v update && brew -v upgrade && brew -v cleanup && brew -v prune && brew -v doctor'
export PIPS='pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U'
export GOS='go get -u -v all'
#ENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
