return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	event = "VeryLazy",
	build = ":TSUpdate",
	opts = {
		auto_install = true,
		context_commentstring = {
			enable = true,
			enable_autocmd = false,
		},
		ensure_installed = {
			"bash",
			"c",
			"go",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"regex",
			"ruby",
			"rust",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
		},
		highlight = {
			enable = true,
			disable = {
				"c",
				"rust",
			},
			additional_vim_regex_highlighting = false,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = "<nop>",
				node_decremental = "<bs>",
			},
		},
		sync_install = false,
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
