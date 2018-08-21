set -x PATH $HOME/.nodebrew/current/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/bin $PATH

set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $ANDROID_HOME/tools $PATH
set -x PATH $ANDROID_HOME/tools/bin $PATH
set -x PATH $ANDROID_HOME/platform-tools

rbenv init - | source
