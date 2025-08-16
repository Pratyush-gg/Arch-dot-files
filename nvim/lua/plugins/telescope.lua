return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set('n', '<leader>f', function()
			builtin.find_files({hidden = true})
		end, {})
		vim.keymap.set('n', '<C-f>', function()
			builtin.live_grep({hidden = true})
		end, {})
	end
}

