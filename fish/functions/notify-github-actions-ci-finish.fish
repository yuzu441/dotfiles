function notify-github-actions-ci-finish
  gh run watch && osascript -e 'display notification "run is done!" with title "github actions"'
end
