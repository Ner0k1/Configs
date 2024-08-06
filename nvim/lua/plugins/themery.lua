return {
	'zaldih/themery.nvim',
	config = function()
		require'themery'.setup({
			livePreview = true,
			themes = {
				'witch-dark', 
				'witch-light',
				'tokyonight',
				'tokyonight-storm',
				'tokyonight-moon',
				'duskfox',
				'habamax',
				'lavender',
				'nightfox',
				'slate',
				'sorbet',
			}
		})
	end
}
