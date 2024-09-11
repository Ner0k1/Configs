return {
    'backdround/global-note.nvim',
    config = function()
        require 'global-note'.setup({
            filename = 'Notepad.md',
            directory = '~/Documents/',
            title = 'Scratch Note',
            command_name = 'ScratchPad',
            window_config = function()
                local window_height = vim.api.nvim_list_uis()[1].height
                local window_width = vim.api.nvim_list_uis()[1].width
                return {
                    relative = "editor",
                    border = "single",
                    title = "Note",
                    title_pos = "center",
                    width = math.floor(0.7 * window_width),
                    height = math.floor(0.70 * window_height),
                    row = math.floor(0.05 * window_height),
                    col = math.floor(0.05 * window_width),
                }
            end,
        })
    end
}
