return {
	"ThePrimeagen/git-worktree.nvim",
	config = function()
		require("git-worktree").setup()
		require("telescope").load_extension("git_worktree")
	end,
	keys = {
		{
			"<leader>gw",
			"<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
			desc = "Show worktrees",
		},
		{
			"<leader>gc",
			"<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
			desc = "Create worktree",
		},
	},
}
