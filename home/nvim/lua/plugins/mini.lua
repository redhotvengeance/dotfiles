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
		config = function()
			require("mini.surround").setup()
		end,
	},
}
