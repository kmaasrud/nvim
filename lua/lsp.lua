DATA_PATH = vim.fn.stdpath('data') -- To simplify finding the path where lspinstall puts LSP servers.
vim.g.completion_matching_strategy = { 'exact', 'substring', 'fuzzy' }

-- Rust
require'lspconfig'.rust_analyzer.setup{
    cmd = {DATA_PATH .. "/lspinstall/rust/rust-analyzer"},
}

-- Python
require'lspconfig'.pyright.setup {
    cmd = {DATA_PATH .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = true,
            update_in_insert = true
        })
    }
}

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

-- Go
require'lspconfig'.gopls.setup{
    cmd = {DATA_PATH .. "/lspinstall/go/gopls"},
}

-- Bash
require'lspconfig'.bashls.setup {
    cmd = {DATA_PATH .. "/lspinstall/bash/node_modules/.bin/bash-language-server", "start"},
    filetypes = { "sh", "zsh" }
}

-- CSS
require'lspconfig'.cssls.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js",
        "--stdio"
    },
}

-- JSON
require'lspconfig'.jsonls.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/json/vscode-json/json-language-features/server/dist/node/jsonServerMain.js",
        "--stdio"
    },
    commands = {
        Format = {
            function()
                vim.lsp.buf.range_formatting({}, {0, 0}, {vim.fn.line("$"), 0})
            end
        }
    }
}

-- Lua (surprisingly, this whole mess is needed for the native scripting language...)
local sumneko_root_path = DATA_PATH .. "/lspinstall/lua"
local sumneko_binary = sumneko_root_path .. "/sumneko-lua-language-server"
require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
                maxPreload = 10000
            }
        }
    }
}

-- HTML
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
    cmd = {"node", DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js", "--stdio"},
    capabilities = capabilities
}

-- Emmet
local nvim_lsp = require'lspconfig'
local configs = require'lspconfig/configs'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
configs.emmet_ls = {
  default_config = {
    cmd = {'emmet-ls', '--stdio'};
    filetypes = {'html', 'css'};
    root_dir = function()
      return vim.loop.cwd()
    end;
    settings = {};
  };
}
nvim_lsp.emmet_ls.setup{}
