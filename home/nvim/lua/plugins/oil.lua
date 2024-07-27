return {
	"stevearc/oil.nvim",
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
			function()
				require("oil").toggle_float()
			end,
			{ desc = "Open Oil" },
		},
	},
}
