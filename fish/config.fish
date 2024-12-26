if type eza >/dev/null 2>&1
  alias ls=eza
else
  echo "'eza' not found. Falling back to default 'ls'."
end
alias ll='ls -al'
alias gl='git log --oneline --decorate --graph --branches --tags --remotes'

switch (uname)
case Darwin
  eval (/opt/homebrew/bin/brew shellenv)
case '*'
  #echo none
end

if type bat >/dev/null 2>&1
  alias cat=bat
else if type batcat >/dev/null 2>&1
  # ubuntu
  alias cat=batcat
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
