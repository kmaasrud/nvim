-- Using this, I can toggle a terminal with M-CR, which is a workflow I like a lot
require('toggleterm').setup {
  size = 20,
  open_mapping = '<M-CR>',
  shade_terminals = false,
  start_in_insert = true,
  direction = 'horizontal',
}
