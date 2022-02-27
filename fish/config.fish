# editor
set -x EDITOR nvim

# fzf
set -x FZF_DEFAULT_COMMAND 'rg --files'
set -x FZF_DEFAULT_OPTS '--bind change:first'
fzf_configure_bindings --directory=\cp

# go
set -x GOPATH (go env GOPATH)
set -x PATH $PATH $GOPATH/bin

# aliases
alias l 'll'
alias la 'ls -lA'
alias gs 'git status'
alias nvim '/usr/local/Cellar/neovim/0.5.1_1/bin/nvim'
alias cloud 'rw -rt cloudtop'

# vim
function vim
  if test (count $argv) -eq 0
    nvim
  else
    nvim $argv
  end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/sajeevs/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
