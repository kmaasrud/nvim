local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Additional motions and ease of use
  use 'justinmk/vim-sneak' -- Use s for quickly navigating with two chars
  use 'b3nj5m1n/kommentary' -- Support for comments
  use 'jiangmiao/auto-pairs' -- Automatic bracket and quote matching
  use 'tpope/vim-surround' -- Motions for surrounding chars
  use 'machakann/vim-highlightedyank' -- Highlight yanked areas

  -- LSP, Treesitter and friends
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'vim-pandoc/vim-pandoc-syntax' -- This is temporary. I would much prefer treesitter highlighting

  -- Theme
  use 'tanvirtin/nvim-monokai'

  -- UI
  use 'romgrk/barbar.nvim'
  use 'akinsho/nvim-toggleterm.lua'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-fzy-native.nvim' } }
  }

  -- Note-taking (personal fork of oberblastmeister/neuron.nvim)
  use {'oberblastmeister/neuron.nvim', branch = 'unstable'}

end)
