return {
	"stevearc/oil.nvim",
	lazy = true,
	dependencies = {
		{ "echasnovski/mini.icons", opts = {} },
	},
	opts = {
		default_file_explorer = true,
		float = {
			preview_split = "right",
		},
		view_options = {
			show_hidden = true,
		},
	},
	keys = {
		{
			"-",
			"<cmd>Oil<cr>",
			{ desc = "Open Oil" },
		},
		{
			"<leader>-",
			function()
				require("oil").toggle_float()
			end,
			{ desc = "Open Oil in floating window" },
		},
	},
}
