return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons'
	},
    config = function()
        require'telescope'.setup{
            defaults = {
                layout_strategy = 'flex',
                layout_config = {
                    height = 0.7,
                    width = 0.8,
                },
                prompt_prefix = '|> ',
                path_display = 'shorten',
                preview = true,
            }
        }
    end
}
