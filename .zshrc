#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
#
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

export PATH=/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"

alias mux="tmuxinator"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
set +o noclobber
export SDKMAN_DIR="/Users/ben/.sdkman"
[[ -s "/Users/ben/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ben/.sdkman/bin/sdkman-init.sh"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

export PATH="/Users/ben/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[[ $TMUX != "" ]] && export TERM="screen-256color"
