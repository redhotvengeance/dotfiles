return {
	-- "rose-pine/neovim",
	"catppuccin/nvim",
	-- name = "rose-pine",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function ()
		vim.cmd([[colorscheme catppuccin]])
	end,
}
