# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

# set alias for bundle exec
alias be='bundle exec'

# dont generate pyc
set -gx PYTHONDONTWRITEBYTECODE false

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# CTRL+R to search like reverse search
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
