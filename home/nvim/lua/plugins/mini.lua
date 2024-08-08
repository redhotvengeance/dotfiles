return {
	{
		"echasnovski/mini.ai",
		version = false,
		event = "VeryLazy",
		config = function()
			require("mini.ai").setup()
		end,
	},
	{
		"echasnovski/mini.surround",
		version = false,
		event = "VeryLazy",
		opts = {
			mappings = {
				add = "<C-s>a", -- Add surrounding in Normal and Visual modes
				delete = "<C-s>d", -- Delete surrounding
				find = "<C-s>f", -- Find surrounding (to the right)
				find_left = "<C-s>F", -- Find surrounding (to the left)
				highlight = "<C-s>h", -- Highlight surrounding
				replace = "<C-s>r", -- Replace surrounding
				update_n_lines = "<C-s>n", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		},
	},
}
