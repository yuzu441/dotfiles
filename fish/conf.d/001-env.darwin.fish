# macの時だけ読み込む設定
if test (uname) = "Darwin"
  # homebrew setting
  eval (/opt/homebrew/bin/brew shellenv)

  # android setting
  set -x ANDROID_HOME $HOME/Library/Android/sdk
  fish_add_path $ANDROID_HOME/platform-tools
  fish_add_path $ANDROID_HOME/tools

  fish_add_path $HOMEBREW_PREFIX/opt/ruby/bin
  fish_add_path $HOME/develop/github.com/yuzu441/tools/target/release

  fish_add_path $HOME/.nodebrew/current/bin
  fish_add_path $HOME/.cargo/bin
  fish_add_path $HOME/bin

  alias nci=notify-github-actions-ci-finish

  # react nativeでvoltaを使おうとするとエラーになるのでその対策
  set -e _VOLTA_TOOL_RECURSION

  # The next line updates PATH for the Google Cloud SDK.
  if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end
end