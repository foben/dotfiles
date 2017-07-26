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
alias ll="ls -lah"
alias lll="ls -lah"
alias cp="cp -v"
alias mv="mv -v"
alias cd..="cd .."
alias dtree="tree -d"
alias cd..4="cd ../../../../"
alias vim="vimx"
alias c="xclip -sel c"
alias grepi="grep -i"
