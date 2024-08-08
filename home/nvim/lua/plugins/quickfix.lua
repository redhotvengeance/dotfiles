return {
	"stevearc/qf_helper.nvim",
	opts = {},
	keys = {
		{
			"<leader>q",
			"<cmd>QFToggle!<cr>",
			"Toggle [q]uickfix list",
		},
		{
			"<leader>l",
			"<cmd>LLToggle!<cr>",
			"Toggle [l]ocation list",
		},
		{
			"<C-n>",
			"<cmd>QNext<cr>",
			"Goto [n]ext quickfix/location list item",
		},
		{
			"<C-p>",
			"<cmd>QPrev<cr>",
			"Goto [p]revious quickfix/location list item",
		},
	},
}
