return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config

	config = function()
    vim.opt.list = true
    vim.opt.listchars:append "space:⋅"
	require("ibl").setup({
		indent = {
			char = "│",
		},
		whitespace = {
			remove_blankline_trail = true,
		},
		scope = {
			enabled = true,
			show_start = true,
            show_end = true,

		},
		exclude = {
			filetypes = { "help", "packer", "nvimtree", "dashboard", "neo-tree" },
			buftypes = { "terminal", "nofile", "quickfix" },
		},
	})
	end
}
