#
# ALL THE ALIASES 🤷
#
# BASE
alias ll="ls -lh --color"
alias lll="ls -lah --color"
alias cp="cp -v"
alias mv="mv -v"
alias c="xclip -sel c"
alias p="xclip -sel c -o"
alias grepi="grep -Iirn --color"
# GIT
alias gitlo="git log -n"
alias gits="clear;git status"
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
