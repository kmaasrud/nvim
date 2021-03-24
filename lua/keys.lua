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
