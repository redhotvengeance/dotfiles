return {
	"folke/zen-mode.nvim",
	opts = {},
	keys = {
		{
			"<leader>zz",
			function()
				require("zen-mode").toggle()
			end,
			desc = "Open buffer in zen mode",
		},
	},
}
