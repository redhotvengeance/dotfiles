return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		triggers = {},
		keys = {
			scroll_down = "<m-d>", -- binding to scroll down inside the popup
			scroll_up = "<m-u>", -- binding to scroll up inside the popup
		},
		show_help = false,
	},
	keys = {
		{
			"<leader>wk",
			function()
				require("which-key").show({ global = true })
			end,
			desc = "Show [w]hich[k]ey",
		},
	},
}
