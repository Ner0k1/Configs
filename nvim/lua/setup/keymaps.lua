local builtin = require('telescope.builtin')
local km = require('vim.keymap')
local ls = require('vim.lsp.buf')
local tl = require('telescope')
local nt = require('global-note')
local oil = require('oil')

-- Find
km.set('n', '<leader>ff', builtin.find_files, { desc = "Find File" })
km.set('n', '<leader>fg', builtin.live_grep, { desc = "Find Grep" })
km.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffer" })
km.set('n', '<leader>fm', builtin.man_pages, { desc = "Find Manual" })
km.set('n', '<leader>fr', builtin.lsp_references, { desc = "Find Ref" })

-- Go to
km.set('n', '<leader>gd', builtin.lsp_definitions, { desc = "Go to Definition" })
km.set('n', '<leader>gi', builtin.lsp_implementations, { desc = "Go to Implementation" })

-- Code Action
km.set({ 'n', 'v' }, '<leader>ca', ls.code_action, { desc = 'Code Actions' })
km.set('n', '<leader>cr', ls.rename, { desc = 'Rename Var' })
km.set('n', '<leader>cf', function() ls.format { async = true } end, { desc = 'Code Format' })
km.set('n', '<leader>ls', "<CMD>LspStart<CR>", { desc = 'Start Lsp' })
km.set('n', '<leader>lS', "<CMD>LspStop<CR>", {desc = 'Stop Lsp'})

-- Workspace
km.set('n', '<leader>wa', ls.add_workspace_folder, { desc = "Add Folder" })
km.set('n', '<leader>wd', ls.remove_workspace_folder, { desc = "Remove Folder" })
km.set('n', '<leader>wl', function() print(vim.inspect(ls.list_workspace_folders())) end, { desc = "List Folders" })

-- Notifications
km.set('n', '<leader>ng', tl.extensions.notify.notify, { desc = "Notify Grep" })

-- ScratchPad
km.set('n', '<leader>q', nt.toggle_note, { desc = "ScratchPad" })

-- Oil
km.set('n', "<leader>fo", "<CMD>Oil<CR>", { desc = "Open Parent Dir" })

