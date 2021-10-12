# editor
set -x EDITOR nvim

# google-cloud-sdk homebrew cask
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# fzf
set -x FZF_DEFAULT_COMMAND 'rg --files'
set -x FZF_DEFAULT_OPTS '--bind change:first'
fzf_configure_bindings --directory=\cp

# go
set -x GOPATH (go env GOPATH)
set -x PATH $PATH $GOPATH/bin

# aliases
alias l ll
alias la 'ls -lA'
alias gs 'git status'
function vim
  if test (count $argv) -eq 0
    nvim
  else
    nvim $argv
  end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
