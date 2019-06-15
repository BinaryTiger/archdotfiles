. ~/scripts/z.sh 
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/binarytiger/.zshrc'


autoload -Uz compinit
compinit
# End of lines added by compinstall
export ZSH=~/.oh-my-zsh
export EDITOR=/usr/bin/nvim
export VISUAL="nvim"
export PAGER="less"

# Don't log duplicate commands.
export HISTCONTROL=ignoredups

# Import colorscheme from 'wal'
source "${HOME}/.cache/wal/colors.sh"
(cat ~/.cache/wal/sequences &)

# Install antigen for this to work (https://github.com/zsh-users/antigen)
source ~/scripts/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle z
antigen bundle yarn
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions
antigen bundle docker
antigen bundle zsh-users/zsh-syntax-highlighting #order important
antigen bundle zsh-users/zsh-history-substring-search #order imporant
antigen theme steeef
antigen apply
# bindkey -v

# https://github.com/zsh-users/zsh-history-substring-search
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Alias
alias oldvim="\vim"
alias v=nvim
