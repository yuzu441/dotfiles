# Loaded only on Linux
if test (uname) = "Linux"
  # apt's fd-find package installs the binary as fdfind, so alias it to fd
  if command -q fdfind
    if command -q fd
      echo "'fd' already exists (likely fdclone); skipping alias to fdfind."
    else
      alias fd fdfind
    end
  end
end
