alias ls=eza
alias ll='ls -al'
alias gl='git log --oneline --decorate --graph --branches --tags --remotes'

switch (uname)
case Darwin
  eval (/opt/homebrew/bin/brew shellenv)
case '*'
  #echo none
end

if type bat >> /dev/null
  alias cat=bat
else if type batcat >> /dev/null
  # ubuntu
  alias cat=batcat
end



if status is-interactive
    # Commands to run in interactive sessions can go here
end
