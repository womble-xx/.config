vim.defer_fn(function()
	require('nvim-treesitter.configs').setup {
		-- languages to be installed by treesitter
		ensure_installed = {'c', 'cpp', 'cmake', 'lua', 'python', 'rust', 'vimdoc', 'vim', 'bash', 'java', 'latex', 'query'},

		-- autoinstall languages that are not installed?
		auto_install = true,

		highlight = { enable = true },
		indent = { enable = true },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = '<c-space>',
				node_incremental = '<c-space>',
				scope_incremental = '<c-s>',
				node_decremental = '<M-space>',
			},
		},
	}
end, 0)
