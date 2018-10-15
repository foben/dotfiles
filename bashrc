# .bashrc
# Based on Fedora default .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Include ~/.bashrc_additions,
# which may include semi-sensitive or local definitions
if [ -f ~/.bashrc_additions ]; then
	. ~/.bashrc_additions
fi
. ~/.bashrc_kubectl
. ~/.bashrc_oc

# 
# PROMPT
#
# Setup bashgit, which may also be in ~/dotfiles
export PS1='\[\033[01;35m\]\W\[\033[00m\]> '
if [ -f ~/.bashgit ]; then
    . ~/.bashgit
fi
if [ -f ~/dotfiles/bashgit ]; then
    . ~/dotfiles/bashgit
fi

#
# HISTORY SETTINGS
#
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTSIZE=10000
export HISEFILESIZE=10000

#
# LESS SETUP
#
#alias less=less -S
#export LESS='-F -X -S $LESS'
#export LESSOPEN='|~/.lessfilter %s'
export LESS='-F -S -X -R'

#
# GO SETUP
#
export GOPATH=/home/$USERNAME/go
#export GOROOT=/usr/bin/

#
# MISC. ALIASES
#
alias listbranches='for D in *; do pushd "$D" > /dev/null 2>/dev/null && printf "%s %s\n" "${PWD##*/}" "$(git branch | grep \*)" && popd > /dev/null 2>/dev/null; done'
alias ll="ls -lh"
alias lll="ls -lah"
alias cp="cp -v"
alias mv="mv -v"
alias cd..="cd .."
alias dtree="tree -d"
alias cd..4="cd ../../../../"
alias vim="vimx"
alias c="xclip -sel c"
alias grepi="grep -Iirn"
alias gitlo="git log -n"
alias prettyjson="python -m json.tool"
alias xmo="xmodmap ~/.Xmodmap"
alias k="kubectl"
alias gitk="gitk --all &"
alias please="sudo"
alias auf="xdg-open"
alias tl="task list"
alias td="task done"
alias ta="task add"
alias te="task edit"
alias gits="git status"
alias lock="i3lock -f -c \"$(tr -dc 'A-F0-9' < /dev/urandom | head -c6)\""
alias diso="date -I"
alias b64="base64 -w 0"
alias b64d="base64 --decode"
alias k="kubectl"
alias kcns="kubectl config set-context $(kubectl config current-context) --namespace"
alias dwatch="watch -d -n 1"
alias devops="cd /home/felix/dev/svh/devops"
alias oc37=oc

#function dotil {
#  echo $1
#  until $($1); do echo "retrying..."; sleep 1; done
#}

#
# PATH additions
#

export PATH=$PATH:/opt/helm
export PATH=$PATH:/opt/google-cloud-sdk/bin
export PATH=$PATH:/opt/cfssl/
export PATH=$PATH:/home/felix/.bin
export PATH=$PATH:/home/felix/dotfiles/scripts
export EDITOR=vim
