#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Javaの文字コードをutf-8にする
JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
export JAVA_TOOL_OPTIONS

# 環境変数
if [ -e ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# os別の環境変数読み込む場合
#case `uname` in
#  "Darwin" )
#    source ~/.zshrc.osx
#esac

# zshの設定
# bindkey -v # vimモード
setopt nobeep # ビープ音要らない
export EDITOR=vim

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/yuzu/.sdkman"
[[ -s "/Users/yuzu/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/yuzu/.sdkman/bin/sdkman-init.sh"
