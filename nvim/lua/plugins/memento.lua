return {
    'gaborvecsei/memento.nvim',
    config = function()
        local mem = require('memento')
        vim.g.memento_history = 15
        vim.g.memento_shorten_path = true
        vim.g.memento_window_width = 70
        vim.g.memento_window_height = 20
        vim.keymap.set('n', '<leader>fh', mem.toggle, {desc = "Find History"})
    end
}
