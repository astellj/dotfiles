
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(jenv init -)"
eval "$(pyenv init -)"
export PATH="/Library/PostgreSQL/9.4/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Applications/IntelliJ IDEA CE.app/Contents/MacOS:$PATH"
test -f ~/.zshrc && . ~/.zshrc

