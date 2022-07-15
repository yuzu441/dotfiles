set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_STATE_HOME $HOME/.local/state

set -x RUSTUP_HOME $XDG_CONFIG_HOME/rustup
set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -x NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -x VOLTA_HOME $XDG_DATA_HOME/volta
set -x GO111MODULE on
set -x GOPATH $XDG_DATA_HOME/go
set -x DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -x DOCKER_HOST unix://$XDG_RUNTIME_DIR/docker.sock

set -x EDITOR vim

set -x PATH $CARGO_HOME/bin $PATH
set -x PATH $VOLTA_HOME/bin $PATH
