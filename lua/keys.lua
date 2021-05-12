-- g version of j/k for easily navigating wrapped content
vim.api.nvim_set_keymap('n', 'k', 'v:count == 0 ? "gk" : "k"', { noremap = true, expr = true })
vim.api.nvim_set_keymap('n', 'j', 'v:count == 0 ? "gj" : "j"', { noremap = true, expr = true })

-- g version of 0, ^ and $
vim.api.nvim_set_keymap('n', '$', 'g$', { noremap = true })
vim.api.nvim_set_keymap('n', '^', 'g^', { noremap = true })
vim.api.nvim_set_keymap('n', '0', 'g0', { noremap = true })

-- Better tabbing of visually selected content
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-- Move things in visual mode with J and K
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true })

-- Insert newline with meta and O
vim.api.nvim_set_keymap('n', '<M-o>', 'o<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-O>', 'O<Esc>', { noremap = true })

-- cd into directory of current buffer
vim.api.nvim_set_keymap('n', '<leader>cd', ':cd %:p:h<CR>', { noremap = true })

-- Quick save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })

-- Sensible undo
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })

-- Paste the last yank (no d or c) without dealing with the mental overhead of register
vim.api.nvim_set_keymap('n', 'yp', '"0p', { noremap = true })
vim.api.nvim_set_keymap('n', 'yP', '"0P', { noremap = true })
