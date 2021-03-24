 --- Set space as the leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

require('plugins')
require('options')
require('keys')

-- Plugin configs
require('pconf/compe')
require('pconf/barbar')
require('pconf/treesitter')
require('pconf/telescope')
require('pconf/sneak')
require('pconf/toggleterm')
require('pconf/neuron')
require('pconf/vim_pandoc_syntax')

-- Theme
require('monokai')
vim.api.nvim_command('highlight Normal ctermbg=NONE guibg=NONE')
vim.api.nvim_command("exec 'hi CursorLineNr guibg=' . synIDattr(hlID('CursorLine'),'bg')")

-- LSP must be after theme to ensure correct highlighting
require('lsp')
