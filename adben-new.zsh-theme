#!/usr/bin/env zsh
### Shows prompt character according to the VCS you are currently in or super/normal user
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    svn info >/dev/null 2>/dev/null && echo '⚡' && return
    echo '%#'
}
########## VCS ###########
### Coloured Git state indicator → taken from: http://briancarper.net/blog/570/git-info-in-your-zsh-prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '%F{green} *%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow} *%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{red}:%f%F{yellow}%r%f'
zstyle ':vcs_info:*' enable git svn hg
precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
	    zstyle ':vcs_info:*' formats '%F{cyan}[%b%c%u%f%F{cyan}]%f'
	} else {
	    zstyle ':vcs_info:*' formats '%F{cyan}[%b%c%u%f%F{red} *%f%F{cyan}]%f'
	}
	vcs_info
}
########## VCS ###########
######### PROMPT #########
setopt prompt_subst
autoload -U colors && colors
local USER_HOST_CURRENT_DIR='%(!.%B%U%F{blue}%n%f%u%b.%F{blue}%n%f) at %F{magenta}%m%f on %F{yellow}%y%f in %F{cyan}%~%f'
#local COMMAND_TIP='%{$terminfo[bold]$fg[cyan]%}$(wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed 1d | sed '/^$/d' | sed 's/^/║/g')%{$reset_color%}'
### The left side of a normal prompt
### shows: username, hostname, (p|t)ts, working directory, standard prompt character or VCS sign; special styling for root.
PROMPT='%(!.%B%U%F{blue}%n%f%u%b.%F{blue}%n%f) at %F{red}%m%f on %F{yellow}%y%f in %F{cyan}%~%f
{${vcs_info_msg_0_} %(!.%F{red}$(prompt_char)%f.$(prompt_char))} : %{$reset_color%}  '
### The right side of a normal prompt
### shows: Date format dd.mmm,yy hh:mm:ss
RPROMPT='%{$reset_color%}[%F{green}%D{%e.%b.%y %H:%M:%S}%f ]%{$reset_color%}'
#                                     ^^^^^^^^^^^^^^^^^ ← this is the part that defines date and time.
### Loop prompt
PROMPT2='{%_}  '
### Selection prompt
PROMPT3='{ … }  '
######### PROMPT #########
