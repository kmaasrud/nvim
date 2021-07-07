--- Set space as the leader key
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
require('pconf/lsp_signature')
require('pconf/buftabline')
if require('utils').get_hostname() == 'knix' then
  require('pconf/treesitter')
  -- require('pconf/neuron')
end

-- Theme
require('monokai')
vim.cmd([[
function! MyHighlights() abort
    highlight LineNr ctermbg=NONE guibg=NONE
    exec 'hi CursorLineNr guibg=' . synIDattr(hlID('CursorLine'),'bg')
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

colorscheme monokai_pro
]])

-- LSP must be after theme to ensure correct highlighting
require('lsp')
