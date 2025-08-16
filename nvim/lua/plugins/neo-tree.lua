return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	opts = {

	},

	config = function()
		require("neo-tree").setup({
			window = {
				width = 30,
			},
			source_selector = {
				winbar = true,
				statusline = true,
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					visible = true,
				},
			},
		})
		vim.keymap.set('n', '<leader>fg', ':Neotree filesystem reveal left<CR>', {})
	end
}
