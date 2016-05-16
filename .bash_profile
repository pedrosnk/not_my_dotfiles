export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# git auto complete

source /usr/local/share/git-core/contrib/completion/git-completion.bash


# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function __rbenv_ps1 () {
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}

alias be='bundle exec'
alias ll='ls -lia'

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u $NO_COLOUR@\W <$RED\$(__rbenv_ps1)$NO_COLOUR>$YELLOW\$(parse_git_branch)$NO_COLOUR $ "
