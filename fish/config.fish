set -x ANDROID_HOME $HOME/Android/Sdk
set -x GO111MODULE on

set -x PATH $PATH \
  $HOME/.nodebrew/current/bin \
  $HOME/.cargo/bin \
  $HOME/.yarn/bin \
  $HOME/.local/bin \
  $ANDROID_HOME/tools \
  $ANDROID_HOME/tools/bin \
  $ANDROID_HOME/platform-tools \
  /usr/local/go/bin \
  $HOME/go/bin

alias nodejs=node
gl='git log --oneline --decorate --graph --branches --tags --remotes'

