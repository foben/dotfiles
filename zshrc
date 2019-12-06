# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#source $HOME/.zsh-git-prompt/zshrc.sh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
ZSH_THEME="gnzh"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
CASE_SENSITIVE="true"


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pass)

source $ZSH/oh-my-zsh.sh

# CUSTOM ADDITIONS

## DIRCOLORS ################################
eval `dircolors $HOME/dotfiles/dircolors`

## HISTORY ################################
#PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTSIZE=10000
export HISTFILESIZE=10000
#export HISTIGNORE='ll:ll *:lll:lll *:ls *'
export HISTCONTROL=$HISTCONTROL:ignoreboth:erasedups

## LESS SETUP ################################
export LESS='-F -S -X -R'

## GO ################################
export GOPATH=/home/$USERNAME/go
#export GOROOT=/usr/bin/

# PATH additions
export PATH="$PATH:/opt/helm"
export PATH="$PATH:/opt/google-cloud-sdk/bin"
export PATH="$PATH:/opt/cfssl/"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/dotfiles/scripts"
export PATH="$PATH:/opt/mssql-tools/bin"
export PATH="$PATH:/opt/azure-cli/bin"
export PATH="$PATH:/opt/pycharm/bin"
export PATH="$PATH:$HOME/.cargo/bin"

export EDITOR=vim

source ~/dotfiles/aliases.sh	 

#precmd() { echo "HI THERE" }

# ?
unsetopt share_history
# Source K8S completions
source <(kubectl completion zsh)
#source <(oc completion zsh)
#
#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/felix/google-cloud-sdk/path.zsh.inc' ]; then . '/home/felix/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/felix/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/felix/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/felix/.sdkman"
[[ -s "/home/felix/.sdkman/bin/sdkman-init.sh" ]] && source "/home/felix/.sdkman/bin/sdkman-init.sh"

export PATH=$PATH:/home/felix/bin

source '/home/felix/lib/azure-cli/az.completion'
