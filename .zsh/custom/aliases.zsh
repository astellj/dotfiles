# eza aliases
alias ld='eza -lD'
alias lf='eza -lf --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alf --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'

mkcdir ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}

alias mkcdir='mkcdir'

