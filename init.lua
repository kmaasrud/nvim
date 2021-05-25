-- Set space as the leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

require('plugins')
require('options')
require('keys')

-- Plugin configs
require('pconf/compe')
require('pconf/netrw')
require('pconf/sneak')
require('pconf/telescope')
require('pconf/toggleterm')
require('pconf/vim_pandoc_syntax')
require('pconf/which-key')
if require('utils').get_hostname() == 'knix' then
  require('pconf/treesitter')
  require('pconf/neuron')
end

-- Theme
require('monokai')
vim.api.nvim_command('highlight Normal ctermbg=NONE guibg=NONE')
vim.api.nvim_command("exec 'hi CursorLineNr guibg=' . synIDattr(hlID('CursorLine'),'bg')")

-- LSP must be after theme to ensure correct highlighting
require('lsp')
