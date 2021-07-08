RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0m\]"
 
. /etc/bash_completion.d/git-prompt
PS1="$BLUE\u@\h$NO_COLOR:\w$YELLOW\$(__git_ps1 )$NO_COLOR\$ "
 
#export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/jre"
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$HOME/dotfiles/bin:$HOME/bin/zing:$PATH"

export NVM_DIR="/home/dan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export GIT_EDITOR=vim

# unlimited bash history
export HISTSIZE=""

shopt -s histappend                      # append to history, don't overwrite it

PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
HISTTIMEFORMAT='%F %T '
#export HISTCONTROL=ignoreboth:erasedups


/usr/bin/keychain $HOME/.ssh/id_rsa_work
source $HOME/.keychain/$HOSTNAME-sh


export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,.cache,public}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bind -x '"\C-p": vim $(fzf);'
export FZF_TMUX=1

alias ,f="fzf --bind 'enter:execute(vim {1} < /dev/tty)'"
