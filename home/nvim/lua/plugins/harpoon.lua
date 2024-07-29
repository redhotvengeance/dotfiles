return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon"):list():add()
			end,
			desc = "Add file to Harpoon",
		},
		{
			"<leader>h",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Toggle Harpoon",
		},
		{
			"<C-1>",
			function()
				require("harpoon"):list():select(1)
			end,
			desc = "Switch to first Harpoon mark",
		},
		{
			"<C-2>",
			function()
				require("harpoon"):list():select(2)
			end,
			desc = "Switch to second Harpoon mark",
		},
		{
			"<C-3>",
			function()
				require("harpoon"):list():select(3)
			end,
			desc = "Switch to third Harpoon mark",
		},
		{
			"<C-4>",
			function()
				require("harpoon"):list():select(4)
			end,
			desc = "Switch to fourth Harpoon mark",
		},
	},
}
