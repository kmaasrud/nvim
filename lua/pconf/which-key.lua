local wk = require("which-key")
-- Configuration guide: https://github.com/folke/which-key.nvim#%EF%B8%8F-configuration
wk.setup()

-- Mappings
wk.register({
  -- File commands
  f = {
    name = "file",
    w = { ":w<cr>", "Write file" },
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>Telescope git_files<cr>", "Find Git files" },
    b = { "<cmd>Telescope file_browser<cr>", "Open Telescope file browser" },
    n = { function()
            local fname = vim.fn.input("Enter file name: ", "", "file")
            vim.api.nvim_command("e %:h/" .. fname)
          end, "New file in current file's directory" },
  },

  -- Window commands
  w = {
    name = "window",
    s = { "<C-w>v", "Split window vertically" },
    h = { "<C-w>s", "Split window horizontally" },
    q = { "<C-w>q", "Quit current window" },
  },

  -- Buffer commands
  b = {
    name = "buffer",
    b = { "<cmd>Telescope buffers<cr>", "Find buffer" },
    f = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Find in current buffer" },
  },

  -- Help commands
  h = {
    name = "help",
    h = { "<cmd>Telescope help_tags<cr>", "Find in help" },
    o = { ":help<cr>", "Open help" },
    g = { ':execute "set colorcolumn=" . (&colorcolumn == "" ? "81" : "")<CR>', "Show an 80 character guide" },
  },

  -- Directory commands
  d = {
    name = "directory",
    d = { ":Lexplore<cr>", "Open directory tree" },
    c = { ":cd %:p:h<CR>", "Change working directory into current file's directory" }
  },

  ['<leader>'] = { name = "Search for file" },
}, { prefix = '<leader>' })
