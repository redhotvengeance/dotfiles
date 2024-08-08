return {
	"nvim-treesitter/nvim-treesitter",
	version = false,
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile", "BufWritePre", "VeryLazy" },
	lazy = vim.fn.argc(-1) == 0,
	init = function(plugin)
		require("lazy.core.loader").add_to_rtp(plugin)
		require("nvim-treesitter.query_predicates")
	end,
	cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
	opts = {
		auto_install = true,
		context_commentstring = {
			enable = true,
			enable_autocmd = false,
		},
		ensure_installed = {
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"query",
			"regex",
			"vim",
			"vimdoc",
		},
		highlight = { enable = true },
		indent = { enable = true },
		sync_install = false,
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
