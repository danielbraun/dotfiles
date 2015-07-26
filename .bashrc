# Bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

source ~/.git-prompt.sh
source ~/.git-completion.bash
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="~/Downloads/depot_tools:$PATH"

export CLICOLOR=1
export PS1='\w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/
