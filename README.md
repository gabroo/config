## usage

### 1. get [neovim](https://neovim.io) >=0.5.0

```fish
brew install neovim
```

### 2. prep

```bash
git clone https://github.com/gabroo/nvim.git ~/.config/nvim
mkdir ~/.config/nvim/undo
brew install fzf glow tree-sitter tmux
```

create a tmux config file

```bash
echo "source-file ~/.config/tmux/.tmux.conf" >> ~/.tmux.conf
```

if you have issues with `tmux-256color`, see [this](https://gist.github.com/bbqtd/a4ac060d6f6b9ea6fe3aabe735aa9d95#the-right-way)

you will also need a [font](https://github.com/ryanoasis/nerd-fonts/)
that has been patched with [Devicon](https://devicon.dev/)
glyphs for `nvim-tree` icons to show up

```bash
brew tap homebrew/cask-fonts
brew install --cask font-[name]-nerd-font
```

fzf compatibility with fish
```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
```

install your desired language servers and add them to the loop in `lua/lsp.lua`

```bash
brew install pyright
yarn global add typescript
```

### 3. plug in

open `nvim` and type `:PackerSync`
