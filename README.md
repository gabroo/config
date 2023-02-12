### dependencies

* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [tmux](https://github.com/tmux/tmux/wiki/Installing)
* [rg](https://github.com/BurntSushi/ripgrep#installation)
* [fzf](https://github.com/junegunn/fzf#installation)
* [tree-sitter](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md#installation)
* [glow](https://github.com/charmbracelet/glow)

### setup

```bash
git clone https://github.com/gabroo/nvim.git ~/.config/nvim
mkdir ~/.config/nvim/undo
echo "source-file ~/.config/tmux/.tmux.conf" >> ~/.tmux.conf
```

if you have issues with `tmux-256color`, see [this](https://gist.github.com/bbqtd/a4ac060d6f6b9ea6fe3aabe735aa9d95#the-right-way)

you will also need a [font](https://github.com/ryanoasis/nerd-fonts/) that has been patched with [Devicon](https://devicon.dev/) glyphs for `nvim-tree` icons to show up, for example:

```bash
brew tap homebrew/cask-fonts
brew install --cask font-[name]-nerd-font
```

fzf compatibility with fish:

```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
```

install your desired language servers and add them to the loop in [`nvim/lua/lsp.lua`](nvim/lua/lsp.lua)

bootstrap [`packer.nvim`](nvim/lua/plugins.lua):

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

open `nvim` and run `:PackerSync`
