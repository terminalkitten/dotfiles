# Zsh defaults
export ZSH="/Users/benjamin/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
alias wefunder="cd /Users/benjamin/Desktop/Code/Ruby/wefunder"
alias helpful_stuff="cd ~/Desktop/Things/'Helpful Stuff'"
alias python="python3"
alias ipaddr="ipconfig getifaddr en0"
alias go-pb="protoc -I=. --go_out=."
alias wf="./wf.sh"
alias go-pry="$GOPATH/bin/go-pry"
alias postgres_dir="cd /usr/local/var/postgres/"
alias mmi="cd /Users/benjamin/Desktop/Code/Projects/mmi"
alias vi ="vim"
alias dotfiles="cd ~/dotfiles"
alias gr="go run"

# Go
export GOPATH=$HOME/go

# Paths
export PATH="/Users/benjamin/go/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH"
export PATH="/Users/benjamin/dotfiles/bin:$PATH"

# Boot tmux if tmux is exists
if command -v tmux &> /dev/null && \
    [ -n "$PS1" ] && \
    [[ ! "$TERM" =~ screen ]] && \
    [[ ! "$TERM" =~ tmux ]] && \
    [ -z "$TMUX" ]
then
  exec tmux
fi
