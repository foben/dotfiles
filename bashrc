# .bashrc

# Source global definitions, if any
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Include ~/.bashrc_additions,
# which may include semi-sensitive or local definitions
if [ -f ~/.bashrc_additions ]; then
	. ~/.bashrc_additions
fi

#
# Source K8S completions
#
. ~/dotfiles/bashrc_kubectl
. ~/dotfiles/bashrc_oc

# 
# PROMPT
#
# Setup bashgit
export PS1='\[\033[01;35m\]\W\[\033[00m\]> '
if [ -f ~/dotfiles/bashgit ]; then
    . ~/dotfiles/bashgit
fi

prompt_status() {
  if [ $? -eq 0 ]; then
      PS1=`echo $PS1 | sed 's/./O/1'`
  else
      PS1=echo $PS1 | sed 's/./X/1'
  fi
}


#
# DIRCOLORS
#
eval `dircolors /home/felix/dotfiles/dircolors`

#
# HISTORY SETTINGS
#
shopt -s histappend
#PROMPT_COMMAND="prompt_status;history -a;$PROMPT_COMMAND"
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTSIZE=10000
export HISEFILESIZE=10000

#
# LESS SETUP
#
#export LESS='-F -X -S $LESS'
#export LESSOPEN='|~/.lessfilter %s'
export LESS='-F -S -X -R'

#
# GO SETUP
#
export GOPATH=/home/$USERNAME/go
#export GOROOT=/usr/bin/

#
# ALIASES
#
# BASE
alias ll="ls -lh --color"
alias lll="ls -lah --color"
alias cp="cp -v"
alias mv="mv -v"
alias c="xclip -sel c"
alias grepi="grep -Iirn"
# GIT
alias gitlo="git log -n"
alias gits="git status"
alias gitk="gitk --all &"
alias listbranches='for D in *; do pushd "$D" > /dev/null 2>/dev/null && printf "%s %s\n" "${PWD##*/}" "$(git branch | grep \*)" && popd > /dev/null 2>/dev/null; done'
# TASK WARRIOR
alias tl="task list"
alias td="task done"
alias ta="task add"
alias te="task edit"
# MISC
alias prettyjson="python -m json.tool"
alias xmo="xmodmap ~/.Xmodmap"
alias k="kubectl"
alias lock="i3lock -f -c \"$(tr -dc 'A-F0-9' < /dev/urandom | head -c6)\""
alias diso="date -I"
alias b64="base64 -w 0"
alias b64d="base64 --decode"
alias k="kubectl"
alias kcns="kubectl config set-context $(kubectl config current-context) --namespace"
alias dwatch="watch -d -n 1"
alias oc37=oc
alias gnutime="/usr/bin/time"
alias gnutimev='/usr/bin/time -f "\nreal: %E\nuser: %U\nsys: %S\n\nmaxmem: %M\navgres: %t\navgmem: %K\n\nfilein: %I\nfileout: %O\nsockin: %r\nsockout: %s"'
alias melde='meld <(echo "") <(echo "") &'
alias svenv='source venv/bin/activate'

#
# PATH additions
#

export PATH=$PATH:/opt/helm
export PATH=$PATH:/opt/google-cloud-sdk/bin
export PATH=$PATH:/opt/cfssl/
export PATH=$PATH:/home/felix/.bin
export PATH=$PATH:/home/felix/dotfiles/scripts
export PATH=$PATH:/opt/mssql-tools/bin
export EDITOR=vim
