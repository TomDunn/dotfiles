# The following lines were added by compinstall
zstyle :compinstall filename '/home/tom/.zshrc'
zstyle ':completion:*' menu select
setopt completealiases

bindkey -v

autoload -Uz compinit promptinit
compinit
promptinit

prompt oliver
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
# End of lines configured by zsh-newuser-install
    
# color aliases
alias ls='ls --color=auto --si'
alias grep='grep --color=auto --line-number'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# git aliases
alias gs="git status"
alias gl="git log"
alias gc="git checkout"
alias gd="git diff --color"
alias gpr="git pull --rebase"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# vlc gets stuck sometimes
alias killvlc='kill -9 `pgrep -f /usr/bin/vlc`'

bindkey "^R" history-incremental-search-backward
bindkey "^J" down-line-or-history
bindkey "^K" up-line-or-history

# tmux
alias tmux="tmux -2"
# NodeJS via NVM
export NVM_DIR="/home/tom/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

