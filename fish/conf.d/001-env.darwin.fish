# macの時だけ読み込む設定
if test (uname) = "Darwin"
  # homebrew setting
  eval (/opt/homebrew/bin/brew shellenv)
  set -x HOMEBREW_NO_UPGRADE_AUTO_UPDATES_CASKS 1
  fish_add_path $HOMEBREW_PREFIX/opt/ruby/bin

  # android setting
  set -x ANDROID_HOME $HOME/Library/Android/sdk
  fish_add_path $ANDROID_HOME/platform-tools
  fish_add_path $ANDROID_HOME/tools

  fish_add_path $HOME/.cargo/bin
  fish_add_path $HOME/bin

  alias nci=notify-github-actions-ci-finish

  # The next line updates PATH for the Google Cloud SDK.
  if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end
end
