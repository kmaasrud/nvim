require('neuron').setup {
  neuron_dir = '~/brain',
  leader = '<leader>z',
}

-- Create new zettel
vim.api.nvim_set_keymap('n', '<leader>zn', ':lua require("neuron/cmd").new_edit(require("neuron/config").neuron_dir)<CR>', { noremap = true })
-- Search in all zettels
vim.api.nvim_set_keymap('n', '<leader>zz', ':lua require("neuron/telescope").find_zettels()<CR>', { noremap = true })
-- Insert a zettel link
vim.api.nvim_set_keymap('n', '<leader>zl', ':lua require("neuron/telescope").find_zettels({ insert = true })<CR>', { noremap = true })
