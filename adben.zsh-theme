#!/usr/bin/env zsh
<<<<<<< HEAD
########## VCS ###########
### Coloured Git state indicator → taken from: http://briancarper.net/blog/570/git-info-in-your-zsh-prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr '%F{green} ●%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow} ●%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{red}:%f%F{yellow}%r%f'
zstyle ':vcs_info:*' enable git svn hg
precmd () {
	if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
		zstyle ':vcs_info:*' formats '%F{cyan}[%b%c%u%f%F{cyan}]%f'
	} else {
		zstyle ':vcs_info:*' formats '%F{cyan}[%b%c%u%f%F{red} ●%f%F{cyan}]%f'
	}

	vcs_info
}
### Shows prompt character according to the VCS you are currently in or super/normal user
function prompt_char {
	git branch >/dev/null 2>/dev/null && echo '±' && return
	hg root >/dev/null 2>/dev/null && echo '☿' && return
	svn info >/dev/null 2>/dev/null && echo '⚡' && return
	echo '%#'
}
########## VCS ###########
######### PROMPT #########
setopt prompt_subst
autoload -U colors && colors
local USER_HOST_CURRENT_DIR='%(!.%B%U%F{blue}%n%f%u%b.%F{blue}%n%f) at %F{magenta}%m%f on %F{yellow}%y%f in %F{cyan}%~%f'
local COMMAND_TIP='%{$terminfo[bold]$fg[cyan]%}$(wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed 1d | sed '/^$/d' | sed 's/^/║/g')%{$reset_color%}'

### The left side of a normal prompt
### shows: username, hostname, (p|t)ts, working directory, standard prompt character or VCS sign; special styling for root.
PROMPT='%(!.%B%U%F{blue}%n%f%u%b.%F{blue}%n%f) at %F{magenta}%m%f on %F{yellow}%y%f in %F{cyan}%~%f
{${vcs_info_msg_0_} %(!.%F{red}$(prompt_char)%f.$(prompt_char))} : %{$reset_color%}'

### The right side of a normal prompt
### shows: Date format dd.mmm,yy hh:mm:ss
RPROMPT='%{$reset_color%}[%F{green}%D{%e.%b.%y %H:%M:%S}%f ]%{$reset_color%}'
#                                     ^^^^^^^^^^^^^^^^^ ← this is the part that defines date and time.

### Loop prompt
PROMPT2='{%_}  '

### Selection prompt
PROMPT3='{ … }  '
######### PROMPT #########
=======
local USER_HOST='%{$terminfo[bold]$fg[yellow]%}%n@%m%{$reset_color%}'
local RETURN_CODE="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local GIT_BRANCH='%{$terminfo[bold]$fg[red]%}$(git_prompt_info)%{$reset_color%}'
local CURRENT_DIR='%{$terminfo[bold]$fg[green]%} %~%{$reset_color%}'
local RUBY_RVM='%{$fg[gray]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
local COMMAND_TIP='%{$terminfo[bold]$fg[blue]%}$(wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed 1d | sed '/^$/d' | sed 's/^/║/g')%{$reset_color%}'
######### PROMPT #########
PROMPT="%{$terminfo[bold]$fg[blue]%}╔═ %{$reset_color%}${USER_HOST} ${CURRENT_DIR} ${RUBY_RVM} ${GIT_BRANCH}
${COMMAND_TIP}
%{$terminfo[bold]$fg[blue]%}╚═ %{$reset_color%}%B%{$terminfo[bold]$fg[white]%}$%b%{$reset_color%} "
RPS1='${RETURN_CODE}'
RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
######### PROMPT #########
########## GIT ###########
ZSH_THEME_GIT_PROMPT_PREFIX="‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%}›"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"
########## GIT ###########
>>>>>>> 6d7a275972918bf535e80a688914ba8f39f65110
