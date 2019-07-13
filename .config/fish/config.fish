# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

# set alias for bundle exec
alias be='bundle exec'

# dont generate pyc
set -gx PYTHONDONTWRITEBYTECODE false

# enable elixir shell history
set -gx ERL_AFLAGS "-kernel shell_history enabled"

# ser rust path for cargo races atocomplete
# set -x 'RUST_SRC_PATH' /Users/{user}/desenv/rustc-1.10.0/src

# Homes for virtualfish
# set -x PROJECT_HOME $HOME/projects_path

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# CTRL+R to search like reverse search
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# FZF
set -x FZF_DEFAULT_COMMAND 'rg --files'
set -x FZF_DEFAULT_OPTS '--height 40% --preview \'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || bat {} --style=numbers --theme=GitHub --color=always\''


# GOLANG
set -x GOPATH $HOME
set -x PATH $GOPATH/bin $PATH

