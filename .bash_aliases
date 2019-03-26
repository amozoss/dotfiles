RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0m\]"
 
. /etc/bash_completion.d/git-prompt
PS1="$BLUE\u@\h$NO_COLOR:\w$YELLOW\$(__git_ps1 )$NO_COLOR\$ "
 
#export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/jre"
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$HOME/bin/zing:$PATH"

export NVM_DIR="/home/dan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export GIT_EDITOR=vim

# unlimited bash history
export HISTFILESIZE=
export HISTSIZE=

shopt -s histappend                      # append to history, don't overwrite it

HISTTIMEFORMAT='%F %T '

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

/usr/bin/keychain $HOME/.ssh/id_rsa_work
source $HOME/.keychain/$HOSTNAME-sh

