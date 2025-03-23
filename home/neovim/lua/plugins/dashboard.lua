return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			shortcut_type = "number",
			config = {
				week_header = { enable = true },
				shortcut = {
					{
						action = "Telescope find_files",
						desc = "Files",
						group = "Label",
						icon = " ",
						icon_hl = "@variable",
						key = "f",
					},
					{
						action = "Lazy",
						desc = "Lazy",
						group = "Label",
						icon = "󰊳 ",
						icon_hl = "@variable",
						key = "L",
					},
				},
				mru = {
					cwd_only = true,
				},
				project = { enable = false },
				footer = {
					"",
					"Get to work, already.",
				},
			},
		})
	end,
}
