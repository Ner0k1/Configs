return {
    'backdround/global-note.nvim',
    config = function ()
        require'global-note'.setup({
            filename = 'Notepad.md',
            directory = '~/Documents/',
            title = 'Scratch Note',
            command_name = 'ScratchPad',
        })
    end
}
