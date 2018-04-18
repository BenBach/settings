#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='nvim'
export VISUAL='nano'
export PAGER='less'
alias vim=nvim
alias vi=nvim


#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"

#
# Android
#
#export ANDROID_HOME=${HOME}/Library/Android/sdk

export ANT_HOME="/usr/local/opt/ant"
export MAVEN_HOME="/usr/local/opt/maven"
export GRADLE_HOME="/usr/local/opt/gradle"

export ANDROID_HOME="/usr/local/share/android-sdk"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

export PATH="$ANT_HOME/bin:$PATH"
export PATH="$MAVEN_HOME/bin:$PATH"
export PATH="$GRADLE_HOME/bin:$PATH"

export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# export PATH=${PATH}:${ANDROID_HOME}/tools
# export PATH=${PATH}:${ANDROID_HOME}/platform-tools
#
# Fastlane
#
export PATH="$HOME/.fastlane/bin:$PATH"
