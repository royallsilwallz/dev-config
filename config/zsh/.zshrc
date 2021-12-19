setopt PROMPT_SUBST

autoload -U colors && colors
export "PATH=$HOME/local/bin:$PATH"
# export PATH=~/scripts:$PATH

#
# scripts
# greet

# history 
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zhistory

# aliases
alias ll='ls -lh --color=auto'

export EDITOR='vim'
export TERMINAL='alacritty'
export BROWSER='google-chrome-stable'
export TERM='xterm-256color'

# keybinds
bindkey '^Y' end-of-line

# vi mode 
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey jk vi-cmd-mode

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# prompt
# PROMPT='%F{blue}%1~%f '

# git branch in prompt
# autoload -Uz vcs_info 
# precmd () { vcs_info } 
# zstyle ':vcs_info:*' formats ' %s(%b)' 
autoload -Uz vcs_info 
precmd () { vcs_info } 
zstyle ':vcs_info:*' formats ' (%F{red}%b%f)'

NEWLINE=$'\n'
PROMPT='%F{green}%~%f$vcs_info_msg_0_${NEWLINE}$ '
# PROMPT='%n in ${PWD/#$HOME/~} > '

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


source /usr/share/nvm/init-nvm.sh

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

