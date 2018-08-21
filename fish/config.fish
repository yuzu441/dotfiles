set -x PATH $HOME/.nodebrew/current/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/bin $PATH

rbenv init - | source
