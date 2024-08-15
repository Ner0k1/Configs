local lsp_conf = require 'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- Scriptables
lsp_conf.tsserver.setup {
    capabilities = capabilities
}

lsp_conf.pylsp.setup {
    capabilities = capabilities
}

lsp_conf.lua_ls.setup {
    on_init = function(client)
        local path = client.workspace_folders[1].name
        if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
            return
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                version = 'LuaJIT'
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                }
            }
        })
    end,
    settings = {
        Lua = {}
    },
    capabilities = capabilities
}

-- Web
lsp_conf.emmet_language_server.setup {
    filetypes = {
        "css",
        "eruby",
        "html",
        "htmldjango",
        "javascriptreact",
        "less",
        "pug",
        "sass",
        "scss",
        "typescriptreact",
        "htmlangular",
        "svelte"
    },
    capabilities = capabilities
}

lsp_conf.svelte.setup {
    capabilities = capabilities
}

lsp_conf.cssls.setup {
    capabilities = capabilities,
}


-- System langs
lsp_conf.nim_langserver.setup {
    capabilities = capabilities
}

lsp_conf.zls.setup {
    capabilities = capabilities,
}

lsp_conf.clangd.setup {
    capabilities = capabilities
}

lsp_conf.gopls.setup {
    capabilities = capabilities,
}

lsp_conf.rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = false,
            }
        }
    },
    capabilities = capabilities,
}

-- Functional
lsp_conf.elixirls.setup {
    cmd = { "/Users/amirgaripov/lsp-servers/elixir-ls/language_server.sh" },
    capabilities = capabilities,
}

lsp_conf.marksman.setup {
    capabilities = capabilities
}
