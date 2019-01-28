# ################################
# .bashrc ################################ 
# ################################

# Source global definitions, if any
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Include ~/.bashrc_additions,
# which may include semi-sensitive or local definitions
if [ -f ~/.bashrc_additions ]; then
	source ~/.bashrc_additions
fi

# Source K8S completions
source ~/dotfiles/bashrc_kubectl
source ~/dotfiles/bashrc_oc

# Source Aliases
source ~/dotfiles/aliases.sh

## BASHGIT PROMPT ################################
export PS1='\[\033[01;35m\]\W\[\033[00m\]> '
if [ -f ~/dotfiles/bashgit ]; then
    source ~/dotfiles/bashgit
fi

## DIRCOLORS ################################
eval `dircolors /home/felix/dotfiles/dircolors`

## HISTORY ################################
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTSIZE=10000
export HISEFILESIZE=10000
#export HISTIGNORE='ll:ll *:lll:lll *:ls *'
export HISTCONTROL=$HISTCONTROL:ignoreboth:erasedups

## LESS SETUP ################################
export LESS='-F -S -X -R'

## GO ################################
export GOPATH=/home/$USERNAME/go
#export GOROOT=/usr/bin/

# PATH additions
export PATH=$PATH:/opt/helm
export PATH=$PATH:/opt/google-cloud-sdk/bin
export PATH=$PATH:/opt/cfssl/
export PATH=$PATH:/home/felix/.bin
export PATH=$PATH:/home/felix/bin
export PATH=$PATH:/home/felix/dotfiles/scripts
export PATH=$PATH:/opt/mssql-tools/bin
export EDITOR=vim
