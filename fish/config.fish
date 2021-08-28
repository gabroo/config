# google-cloud-sdk homebrew cask
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# fzf
set -x FZF_DEFAULT_OPTS '--bind change:first'
fzf_configure_bindings --directory=\cf

# go
set -x GOPATH (go env GOPATH)
set -x PATH $PATH $GOPATH/bin

# aliases
alias l ll
alias vim nvim
alias gs 'git status'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

