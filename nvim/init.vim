" basic options
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set nu
set relativenumber
set ignorecase
set smartcase
set cmdheight=2
set updatetime=50
set shortmess+=cI
set undofile
set undodir=~/.config/nvim/undo
set hlsearch
set backspace
set confirm

" language specific
autocmd FileType bzl setlocal tabstop=4 shiftwidth=4

" disable
set noswapfile
set nobackup
set noerrorbells

" row/column
set cursorline

" colors
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='false'
set background=dark
syntax on
colorscheme gruvbox
set termguicolors

" python
let g:python_host_prog='/usr/local/Caskroom/miniconda/base/envs/py2/bin/python'
let g:python3_host_prog='/usr/local/Caskroom/miniconda/base/envs/nvim/bin/python'

" tmux scroll
set mouse=a

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
      \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
      \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" keybinds
let mapleader=' '

" basic movement
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0

" write
nnoremap <C-s> :w<CR>

" wincmd
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-q> :wincmd q<CR>

" comments
function ToggleComment()
  let l = line('.')
  let c = col('.')
  let s = strwidth(getline('.'))
  Commentary
  let len = strlen(split(&commentstring, "%s")[0])
  if strlen(getline('.')) > s
    call cursor(l, c+len)
  else
    call cursor(l, c-len)
  endif
endfunction
nmap <C-c> :call ToggleComment()<CR>
vmap <C-c> gcgv
imap <C-c> .<C-o>:call ToggleComment()<CR><BS>

" fzf
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}

" nvim-tree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
let g:nvim_tree_show_icons = {
      \'git': 0,
      \'folders': 1,
      \'files': 1,
      \'folder_arrows': 1,
      \}

" markdown preview
autocmd FileType markdown nnoremap <leader>p :Glow<CR>

" lsp
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" formatter
nnoremap <silent> <leader>f :Format<CR>
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" lua
" (do this at the end, otherwise lsp stuff doesn't work)
lua require('init')
