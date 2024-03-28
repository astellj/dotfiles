eval "$(starship init zsh)"
eval "$(fzf --zsh)"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export STARSHIP_CONFIG=~/.config/starship.toml

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh/custom/custom.zsh

source /usr/local/bin/navigation_scripts.sh

# Prevent last login message from displying on startup
printf '\33c\e[3J'

# Git aliases
alias gs='git status'
alias gc='git commit -m'
alias gl='git log'
alias gd='git diff'

# eza aliases
alias ld='eza -lD'
alias lf='eza -lf --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alf --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'

# Alias for updating jetset
alias update_jetset_dev='git_update_jetset.sh'

# Make new dir and cd into it
mkcdir ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}

autoload -Uz compinit
compinit

# Enable SSH config host autocompletion
zstyle ':completion:*:hosts' hosts $(sed -ne 's/Host[=\t ]//p' ~/.ssh/config)

