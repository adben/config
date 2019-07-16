
## Customize to your needs... #PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin:/Users/adolfobenedetti/Dev/Soft/apache-maven-3.1.0/bin:/opt/local/bin:/usr/texbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/X11/bin:/Users/adolfobenedetti/Dev/Soft/play:/opt/local/libexec/gnubin:/usr/local/Cellar/android-sdk/r21/bin:/usr/local/go//bin:/Users/adolfobenedetti/bin:/Users/adolfobenedetti/bin/FDK/Tools/osx:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin
## next line should be in the ~/.zshenv
## export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
## export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8-openj9.jdk/Contents/Home
export NODE_HOME=/usr/local/opt/node
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export INTEL_HAXM_HOME=/usr/local/Caskroom/intel-haxm
export GO_HOME=/usr/local/opt/go/libexec/
export PYTHON_HOME=/usr/local/opt/python/libexec/
export CARGO_HOME=$HOME/.cargo
## RUST
typeset -U path
path+=(~/.cargo/bin)
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src
export GOPATH=$HOME/go
export GORACE=''
export KINDLEGEN_HOME=/Users/adben/Downloads/KindleGen_Mac_i386_v2_9
export GOROOT=$GO_HOME
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/lib/ruby/gems/2.5.0/bin

export PATH=$PATH:$(ruby -r rubygems -e 'puts Gem.user_dir')/bin
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
export PATH=$CARGO_HOME/bin:$PATH
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$PATH:$PYTHON_HOME/bin
export PATH=$HOME/.jenv/bin:$PATH

# export PATH=$ANDROID_HOME/build-tools/23.0.1:$PATH
export PATH=$PATH:$NODE_HOME/bin
export PATH=$PATH:$KINDLEGEN_HOME/kindlegen
export PATH=$PATH:/usr/local/m-cli
export PATH=$PATH:/usr/local/opt/qt/bin
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=$PATH:$HOME/.rvm/bin
export PATH=/usr/local/opt/gnu-getopt/bin:$PATH
export PATH=/usr/local/opt/gettext/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
export EDITOR='vim'
#export EDITOR="emacsclient --alternate-editor /Applications/Emacs.app/Contents/MacOS/Emacs"
#export VISUAL=${EDITOR}
#export ALTERNATE_EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs'
export SBT_OPTS='-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M'

#AWS
export EC2_REGION='eu-west-1'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#ENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
