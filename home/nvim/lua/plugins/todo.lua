return {
	"folke/todo-comments.nvim",
	event = { "BufReadPost", "BufNewFile", "BufWritePre" },
	cmd = { "TodoLocList", "TodoQuickFix", "TodoTelescope", "TodoTrouble" },
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {},
}
