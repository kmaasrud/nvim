vim.o.updatetime = 1000                             -- Make updates happen faster

-- Sensible defaults
vim.o.hidden = true                                 -- Keep multiple buffers open without needing to save
vim.o.wrap = false                                  -- No wrapping by default
vim.o.scrolloff = 6                                 -- Begin scrolling when cursor is this many rows away from the top/bottom
vim.o.fileencoding = 'utf-8'                        -- Encode as UTF-8 when writing to file
vim.o.ignorecase = true                             -- Search is not case-sensitive
vim.o.smartcase = true                              -- ...but when searching with a capital letter, make search case-sensitive
vim.o.incsearch = true                              -- Finds search results while entering the query
vim.o.splitright = true                             -- Prefer windows splitting to the right
vim.o.splitbelow = true                             -- Prefer windows splitting to the bottom
vim.o.hlsearch = false                              -- No highlighting after search
vim.o.mouse = 'nv'                                  -- Use mouse in Normal and Visual mode
vim.o.clipboard = 'unnamedplus'                     -- Use native clipboard
vim.o.shortmess = vim.o.shortmess .. 'c'            -- Don't pass messages to |ins-completion-menu|
vim.o.belloff = 'all'                               -- Stop the damn bell
vim.g['netrw_dirhistmax'] = 0                       -- Fuck off, netrw

-- Danger zone!!
vim.o.backup = false                                -- Living on the edge! SAVE OFTEN
vim.o.swapfile = false                              -- Same as above
vim.o.writebackup = false

-- UI
vim.wo.relativenumber = true                        -- Relative numbers
vim.wo.number = true                                -- ...but keep the line number for the current line
vim.o.termguicolors = true                          -- GUI colors in terminal
vim.o.t_Co = '256'                                  -- 256 bit color support
vim.o.showmode = false                              -- No need to show the mode I'm in
vim.o.pumblend = 17                                 -- Cool floating window popup menu for completion on command line
vim.o.pumheight = 10                                -- Smaller popup menu
vim.o.signcolumn = "number"                         -- Show signs (from e.g. LSP) over the numbers
vim.o.laststatus = 0                                -- No status line
vim.o.cmdheight = 1                                 -- Smaller command line
vim.wo.cursorline = true                             -- Show a cursorline

-- Tabs	
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.formatoptions = 'cqjrn'