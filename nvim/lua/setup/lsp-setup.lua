local lsp_conf = require 'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()


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

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_conf.cssls.setup {
    capabilities = capabilities,
}

lsp_conf.nim_langserver.setup {
    capabilities = capabilities
}

lsp_conf.svelte.setup {
    capabilities = capabilities
}

lsp_conf.tsserver.setup {
    capabilities = capabilities
}
