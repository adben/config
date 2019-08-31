# # DEBUG ZSH: Performance see bottom 
# zmodload zsh/zprof # top of your .zshrc file

#ssh-agent plugin see https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/ssh-agent
zstyle :omz:plugins:ssh-agent agent-forwarding on

# `brew --prefix`/etc/profile.d/z.sh
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
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
# Helps whith the quotes problem
setopt rcquotes
# custom theme, see https://github.com/caiogondim/bullet-train.zsh
export ZSH_THEME="bullet-train"
export DEFAULT_USER="adben"

#Aliases
# Colored cal output
alias cal="cal | grep --color=auto -E '( |^)$(date +)|$'"
alias hoy="date +%F"
#for emacs
#alias emacs="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --alternate-editor /Applications/Emacs.app/Contents/MacOS/Emacs"
alias emc="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias zshconfig="emc ~/.zshrc"
alias ohmyzsh="em ~/.oh-my-zsh"
alias rmoldelc="cd ~/.emacs.d/ && find . -type f -name \'*.elc\' -exec rm -fv {} \;"
alias compileelcs="cd ~/.emacs.d/ && /Applications/Emacs.app/Contents/MacOS/Emacs --batch -f batch-byte-compile **/*.el ;"
alias optimizeemacs="rmoldelc && sleep 4 && compileelcs"

alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias bower="noglob bower"
alias pginit="postgres -D /usr/local/var/postgres"
#Tasks
alias caskold="brew cask outdated"
alias brewup="brew -v update && brew -v upgrade && brew -v cleanup --prune-prefix && brew cask reinstall $(caskold) && brew -v doctor"
alias pipup="pip3 list --outdated --format=freeze | grep -v '^\\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U"
alias goup="go get -u -v all"
alias npmup="ncu -g"

# Enable tab completion of flags
source $(dirname $(gem which colorls))/tab_complete.sh
# other colorls aliases some from https://gist.github.com/rjhilgefort/51ea47dd91bcd90cd6d9b3b199188c16
alias lc="colorls -lA --sd"
alias gtc="colorls --git-status --tree"
alias tc="colorls -lA --tree"
# Move standard ls
alias ols="ls"
# Base formats
alias ls="colorls -A"           # short, multi-line
alias ll="colorls -1A"          # list, 1 per line
alias ld="ll"
alias la="colorls -lA"          # list w/ info
# [d] Sort output with directories first
alias lsd="ls --sort-dirs"
alias lld="ll --sort-dirs"
alias ldd="ld --sort-dirs"
alias lad="la --sort-dirs"
# [t] Sort output with recent modified first
alias lst="ls -t"
alias llt="ll -t"
alias ldt="ld -t"
alias lat="la -t"
# [g] Add git status of each item in output
alias lsg="ls --git-status"
alias llg="ll --git-status"
alias ldg="ld --git-status"
alias lag="la --git-status"

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
export UPDATE_ZSH_DAYS=30

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
plugins=(bower brew colorize command-not-found common-aliases cp dash dircycle dirhistory dirpersist docker emacs extract gem git gitignore git-extras git-hubflow gitfast github git-prompt gnu-utils go golang history history-substring-search httpie jenv jsontools kubectl last-working-dir lein lol mvn nmap npm nvm oc osx percol perl python pip pipenv repo rsync ruby rust scala sbt safe-paste screen singlechar spring sudo svcat swiftpm thefuck themes tmux transfer urltools vscode web-search wd xcode yarn zsh-navigation-tools zsh_reload)
# plugins=(git)
source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#see brew install zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# # DEBUG ZSH: uncomment This needs to be at the bottom
# zprof

# webassembly
# see https://webassembly.org/getting-started/developers-guide/
# source ${HOME}/l/emsdk/emsdk_env.sh

# Cargo
source $HOME/.cargo/env
