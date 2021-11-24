-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/sajeev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sajeev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sajeev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sajeev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sajeev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/cmp-treesitter"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n”\1\0\0\a\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0035\4\t\0005\5\a\0005\6\6\0=\6\b\5=\5\n\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\tload\1\0\0\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\1\17my_workspace\n~/org\24core.norg.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/neorg"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/vim-cool"
  },
  ["vim-ft-bzl"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/vim-ft-bzl"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/sajeev/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n”\1\0\0\a\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0035\4\t\0005\5\a\0005\6\6\0=\6\b\5=\5\n\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\tload\1\0\0\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\1\17my_workspace\n~/org\24core.norg.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
