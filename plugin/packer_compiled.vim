" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/kmaasrud/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/kmaasrud/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/kmaasrud/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/kmaasrud/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kmaasrud/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["neuron.nvim"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/neuron.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-monokai"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/nvim-monokai"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/vim-highlightedyank"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/kmaasrud/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
