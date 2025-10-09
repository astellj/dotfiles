eval "$(/opt/homebrew/bin/brew shellenv)"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
eval "$(pyenv init -)"

export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH="/Library/PostgreSQL/18/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Applications/IntelliJ IDEA CE.app/Contents/MacOS:$PATH"

