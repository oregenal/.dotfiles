# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/oregenal/.zshrc'

autoload -U colors && colors
PS1="%B%{$fg[yellow]%}%~%B%{$fg[red]%}%{$fg[blue]%}:%{$reset_color%}$%b "
#PS1="%B%{$fg[red]%}>%{$fg[blue]%}:%{$fg[yellow]%}%~%{$reset_color%}$%b "
#PS1="%B%{$fg[blue]%}%n:%{$fg[yellow]%}%~%{$reset_color%}$%b "
#[\u@\h \W]\$

# Basic auto/tab complite
autoload -Uz compinit
zstyle ':completion*' menu select
zmodload zsh/complist
compinit
_comp_option+=(globdots)	# Include hidden files
# End of lines added by compinstall

# Git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%{$fg[yellow]%}${vcs_info_msg_0_}%{$reset_color%}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Autosuggest accept bind key
# bindkey '^ ' autosuggest-accept

# Aliases
alias ls="ls --color=auto"
alias grep='grep --color=auto'
alias less='less -rx4'
alias objdump='objdump -M intel'
alias diff='diff --color'
alias yt='mpv --ytdl-format="bestvideo[ext=mp4][height<=?1080]+bestaudio[ext=m4a]"'
alias csi='chicken-csi'
alias csc='chicken-csc'

# Pager color
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;34m'
export GROFF_NO_SGR=1 #since sgr no longer part of groff
#export LESS='-R --use-color -Dd+r$Du+b'

# Env settings
export EDITOR=nvim
export BROWSER=chromium
export LC_MESSAGES=C

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
