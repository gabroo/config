return require('packer').startup(function()
  use "wbthomason/packer.nvim"

  -- gruvbox
  use "morhetz/gruvbox"

  -- fzf
  use {
    "junegunn/fzf",
    run = "./install --all",
    requires = "junegunn/fzf.vim"
  }

  -- Git
  use "tpope/vim-fugitive"

  -- comments
  use "tpope/vim-commentary"

  -- better hlsearch
  use "romainl/vim-cool" 

  -- nvim-tree
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons"
  }

  -- markdown preview
  use "ellisonleao/glow.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- LSP
  use "neovim/nvim-lspconfig"

  -- autocompletion
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
    }
  }
end)
