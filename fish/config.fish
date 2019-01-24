set -x ANDROID_HOME $HOME/Android/Sdk
set -x GOENV_ROOT $HOME/.goenv
set -x GOPATH $HOME/develop

set -x PATH $PATH \
  $HOME/.nodebrew/current/bin \
  $HOME/.cargo/bin \
  $HOME/.yarn/bin \
  $HOME/.local/bin \
  $ANDROID_HOME/tools \
  $ANDROID_HOME/tools/bin \
  $ANDROID_HOME/platform-tools \
  $GOENV_ROOT/bin \
  $GOPATH/bin

alias nodejs=node
status --is-interactive; and source (goenv init -|psub)
