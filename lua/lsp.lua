vim.g.completion_matching_strategy = { 'exact', 'substring', 'fuzzy' }

-- Rust
require('lspconfig').rls.setup{}

-- Python
require('lspconfig').pyls.setup{}

-- Neuron
require('lspconfig/configs').neuron_ls = {
  default_config = {
    cmd = { 'neuron-language-server' },
    filetypes = { 'markdown' },
    root_dir = function()
      return vim.loop.cwd()
    end,
    settings = {},
  }
}
require('lspconfig').neuron_ls.setup{}
