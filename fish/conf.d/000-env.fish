set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

set -gx RUSTUP_HOME $XDG_CONFIG_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -gx VOLTA_HOME $XDG_DATA_HOME/volta
set -gx GO111MODULE on
set -gx GOPATH $XDG_DATA_HOME/go
set -gx GOBIN $HOME/.local/bin

set -gx GHQ_ROOT $HOME/develop

set -gx EDITOR vim

fish_add_path /usr/local/go/bin $GOBIN
fish_add_path $CARGO_HOME/bin
fish_add_path $VOLTA_HOME/bin
fish_add_path $GOPATH/bin

fish_add_path $GHQ_ROOT/github.com/yuzu441/tools/target/release
fish_add_path $GHQ_ROOT/github.com/yuzu441/tools/bin
