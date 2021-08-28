## usage

### 1. get [neovim](https://neovim.io) >=0.5.0

```fish
brew install neovim
```

### 2. prep

```fish
git clone https://github.com/gabroo/nvim.git ~/.config/nvim
mkdir ~/.config/nvim/undo
brew install fzf glow tree-sitter
```

you will also need a [font](https://github.com/ryanoasis/nerd-fonts/)
that has been patched with [Devicon](https://devicon.dev/)
glyphs for `nvim-tree` icons to show up

```fish
brew tap homebrew/cask-fonts
brew install --cask font-[name]-nerd-font
```

install your desired language servers and add them to the loop in `lua/lsp.lua`

```
brew install pyright
yarn global add typescript
```

### 3. plug in

open `nvim` and type `:PackerSync`
