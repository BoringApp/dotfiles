export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode disabled
plugins=( z )
source $ZSH/oh-my-zsh.sh

# ❯ ❱ ❭ >
NEWLINE=$'\n'
export PROMPT='%B%{$fg[magenta]%}%6~ %{$reset_color%}% %b ${NEWLINE}%B%{$fg[blue]%}%(!.#.❯)%{$reset_color%}% %b '

# THEOS
export THEOS=$HOME/theos

# Golang
export GOPATH=$HOME/PROJECT/go
export GO111MODULE=auto

# Pipenv
export WORKON_HOME=~/.local/share/virtualenvs

# Java
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

path=(
    /opt/homebrew/opt/make/libexec/gnubin
    /opt/homebrew/opt/openjdk/bin
    /usr/local/bin/
    $GOPATH/bin
    $path
)
export PATH

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ANALYTICS=1
eval "$(/opt/homebrew/bin/brew shellenv)"

# Alias
alias rm="rm -i"

# Auto add newline in each command finish
precmd() { print "" }

# Open file/dir with VSCode 
function code() { open -b "com.microsoft.VSCode" $@ ; }
