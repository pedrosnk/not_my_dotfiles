# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

# set alias for bundle exec
alias be='bundle exec'

# dont generate pyc
set -gx PYTHONDONTWRITEBYTECODE false

# ser rust path for cargo races atocomplete
# set -x 'RUST_SRC_PATH' /Users/{user}/desenv/rustc-1.10.0/src

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# CTRL+R to search like reverse search
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
