-- Keymaps
vim.api.nvim_set_keymap('n', '<M-l>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-S-l>', ':BufferMoveNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-h>', ':BufferPrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-S-h>', ':BufferMovePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-w>', ':BufferClose<CR>', { noremap = true, silent = true })

-- Configuration
line = {
    icons = false,
    closable = false,
    animation = false,
    auto_hide = true,
    no_name_title = 'Unnamed buffer',
    icon_separator_active = '',
    icon_separator_inactive = '',
}
vim.g.bufferline = line
