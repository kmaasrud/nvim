local o = vim.opt
-- Sensible defaults
o.updatetime = 400                                  -- Make updates happen faster
o.hidden = true                                     -- Keep multiple buffers open without needing to save
o.wrap = false                                      -- No wrapping by default
o.scrolloff = 6                                     -- Begin scrolling when cursor is this many rows away from the top/bottom
o.fileencoding = 'utf-8'                            -- Encode as UTF-8 when writing to file
o.ignorecase = true                                 -- Search is not case-sensitive
o.smartcase = true                                  -- ...but when searching with a capital letter, make search case-sensitive
o.incsearch = true                                  -- Finds search results while entering the query
o.splitright = true                                 -- Prefer windows splitting to the right
o.splitbelow = true                                 -- Prefer windows splitting to the bottom
o.hlsearch = false                                  -- No highlighting after search
o.mouse = 'nv'                                      -- Use mouse in Normal and Visual mode
o.clipboard = 'unnamedplus'                         -- Use native clipboard
o.shortmess = vim.o.shortmess .. 'c'                -- Don't pass messages to |ins-completion-menu|
o.belloff = 'all'                                   -- Stop the damn bell
vim.g['netrw_dirhistmax'] = 0                       -- Fuck off, netrw
if require('utils').get_hostname() == 'knix' then
  o.shell = '/bin/fish'                             -- If on laptop, use fish shell
end

-- Danger zone!!
o.backup = false                                    -- Living on the edge! SAVE OFTEN
o.swapfile = false                                  -- Same as above
o.writebackup = false

-- UI
o.relativenumber = true                             -- Relative numbers
o.number = true                                     -- ...but keep the line number for the current line
o.termguicolors = true                              -- GUI colors in terminal
-- o.t_Co = '256'                                      -- 256 bit color support
o.showmode = false                                  -- No need to show the mode I'm in, I know my shit
o.pumblend = 17                                     -- Cool floating window popup menu for completion on command line
o.pumheight = 10                                    -- Smaller popup menu
o.signcolumn = 'number'                             -- Show signs (from e.g. LSP) over the numbers
o.cursorline = true                                 -- Show a cursorline

-- Status and command line
o.cmdheight = 1                                     -- Smaller command line
o.laststatus = 2                                    -- No status line
o.statusline = '%=%m %f'                            -- Place right, modified flag, filepath

-- Tabs
-- 4 spaces - the only acceptable way (exceptions include Lua and HTML, defined in ftplugin)
o.autoindent = true
o.smartindent = true
o.cindent = true
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set softtabstop=4')
o.expandtab = true

o.formatoptions = 'cqjrn'                           -- This does a whole bunch of shit, please don't ask me...
