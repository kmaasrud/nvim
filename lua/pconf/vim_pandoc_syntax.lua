vim.api.nvim_command('augroup ' .. 'pandoc_syntax')
vim.api.nvim_command('au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc')
vim.api.nvim_command('augroup END')

vim.g['pandoc#syntax#conceal#use'] = 0
vim.g['pandoc#syntax#style#use_definition_lists'] = 0
