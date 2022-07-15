alias ls=exa
alias ll='ls -al'
alias cat=bat
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias gl='git log --oneline --decorate --graph --branches --tags --remotes'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

