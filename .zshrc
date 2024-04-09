eval "$(starship init zsh)"
eval "$(fzf --zsh)"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export STARSHIP_CONFIG=~/.config/starship.toml

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh/custom/aliases.zsh
source ~/.zsh/custom/custom.zsh
source ~/.zsh/custom/git-fzf.zsh
source ~/.zsh/custom/navigation-scripts.zsh
source ~/.zsh/custom/update-jetset.zsh

# Prevent last login message from displying on startup
printf '\33c\e[3J'

autoload -Uz compinit
compinit

# Enable SSH config host autocompletion
zstyle ':completion:*:hosts' hosts $(sed -ne 's/Host[=\t ]//p' ~/.ssh/config)

