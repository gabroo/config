return require("packer").startup(
  function()
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

    -- surround
    use "tpope/vim-surround"

    -- better hlsearch
    use "romainl/vim-cool"

    -- nvim-tree
    use {
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require "nvim-tree".setup {}
      end
    }

    -- lualine
    use {
      "hoob3rt/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }

    -- markdown preview
    use "ellisonleao/glow.nvim"

    -- Neorg
    use {
      "vhyrro/neorg",
      config = require("norg"),
      requires = "nvim-lua/plenary.nvim"
    }
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
        "hrsh7th/cmp-path",
        "ray-x/cmp-treesitter"
      }
    }

    -- formatter
    use "mhartington/formatter.nvim"

    -- Bazel
    use "bazelbuild/vim-ft-bzl"

    -- symbols outline
    use "simrat39/symbols-outline.nvim"

    if packer_bootstrap then
      require('packer').sync()
    end
  end
)
