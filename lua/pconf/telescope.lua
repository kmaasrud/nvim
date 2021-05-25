local M = {}
-- Configuration
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        mappings = {
          i = { ['<esc>'] = require('telescope.actions').close },
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('fzy_native')

function M.theme(prompt)
  return require('utils').table_to_string({
    theme = 'dropdown',
    layout_strategy = 'center',
    sorting_strategy = 'ascending',
    results_title = false,
    previewer = false,
    results_height = 20,
    prompt_title = false,
    prompt_prefix = prompt,
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
    }
  })
end

-- Keymaps
vim.api.nvim_set_keymap(
  'n', '<leader><leader>',
  ':lua require("telescope.builtin").find_files(' .. M.theme('File > ') .. ')<CR>',
  { noremap = true, silent = true }
)
