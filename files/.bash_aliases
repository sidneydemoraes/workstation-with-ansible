# Last update:
# 211209.0941 - Sidney de Moraes

alias ls='ls --group-directories --color'
alias lsa='ls -A'
alias ll='ls -lh'
alias llt='ll --sort=time'
alias lls='ll --sort=size'
alias lle='ll --sort=extension'
alias la='ll -A'
alias lat='la --sort=time'
alias las='la --sort=size'
alias lae='la --sort=extension'
alias less='less -R'

function grepc(){
  grep -I --color=always --exclude-dir=".svn" --exclude-dir=".git" $@ | grep -v grep
}

function dockerps(){
  docker ps | awk '{print $1}' | xargs docker inspect -f '{{ .State.Pid }} {{ .Config.Hostname }} {{ .Name }}'
}

which tmux && type tmux &> /dev/null && alias tmux='tmux -uS /tmp/shareds'
which tmate && type tmate &> /dev/null && alias tmate='tmate -uS /tmp/tmate.sock'

# alias resetwifi='sudo dhclient -r wlan0 && sudo dhclient wlan0'
# alias resetnet='sudo dhclient -r eth0 && sudo dhclient eth0'
# alias brightness='xandr --output HDMI1 --brightness '
