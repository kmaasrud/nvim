local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Additional motions and ease of use
  use 'ggandor/lightspeed.nvim' -- Use s for quickly navigating with two chars
  use 'b3nj5m1n/kommentary' -- Support for comments
  use 'jiangmiao/auto-pairs' -- Automatic bracket and quote matching
  use 'tpope/vim-surround' -- Motions for surrounding chars
  use 'machakann/vim-highlightedyank' -- Highlight yanked areas

  -- LSP, Treesitter and friends
  use 'neovim/nvim-lsp'
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'vim-pandoc/vim-pandoc-syntax' -- This is temporary. I would much prefer treesitter highlighting
  use 'cespare/vim-toml'
  use 'ray-x/lsp_signature.nvim'

  -- Theme
  use 'tanvirtin/monokai.nvim'

  -- UI
  use 'akinsho/nvim-toggleterm.lua'
  use 'folke/which-key.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-fzy-native.nvim' } }
  }
  use "folke/zen-mode.nvim"
  use 'jose-elias-alvarez/buftabline.nvim'

  -- Note-taking
  use {'oberblastmeister/neuron.nvim', branch = 'unstable'}
end)
