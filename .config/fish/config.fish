set -gx path /usr/local/bin $path

# path to your oh-my-fish.
set -g omf_path $home/.local/share/omf

# path to your oh-my-fish configuration.
set -g omf_config $home/.config/omf

# set alias for bundle exec
alias be='bundle exec'

# dont generate pyc
set -gx pythondontwritebytecode false

# set elixir/erlang history
set -gx erl_aflags "-kernel shell_history enabled"

set -gx path $home/otps/elixir/bin $path

# ser rust path for cargo races atocomplete
# set -x 'rust_src_path' /users/{user}/desenv/rustc-1.10.0/src

# homes for virtualfish
# set -x project_home $home/projects_path

# load oh-my-fish configuration.
source $omf_path/init.fish

# ctrl+r to search like reverse search
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end


# custom
set -x path /usr/local/opt/python/libexec/bin $path
set -x path /users/pedromedeiros/.cache/rebar3/bin $path

# fzf

set -x fzf_default_command 'rg --files'
set -x fzf_default_opts '--height 40% --preview \'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || bat {} --style=numbers\''

# golang
set -x gopath $home
set -x path $gopath/bin $path

# anrdoid dev

set -x android_home $home/library/android/sdk
set -x path $path $android_home/emulator $android_home/tools
set -x path $path $android_home/tools/bin $android_home/platform-tools
