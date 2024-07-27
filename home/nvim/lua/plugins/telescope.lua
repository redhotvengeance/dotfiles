return {
	{
		"nvim-telescope/telescope.nvim",
		-- install fzf native
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				config = function()
					require("telescope").load_extension("fzf")
				end,
			},
		},
		keys = {
			-- browse file
			{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
			-- browse plugin files
			{
				"<leader>fp",
				function()
					require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
				end,
				desc = "Find plugin file",
			},
			-- browse recent files
			{
				"<leader>?",
				"<cmd>Telescope oldfiles<cr>",
				desc = "Recent files",
			},
			-- browse open buffers
			{
				"<leader><space>",
				"<cmd>Telescope buffers<cr>",
				desc = "Open buffers",
				nowait = true,
			},
			{
				"<leader>fs",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Grep",
			},
			{
				"<leader>/",
				function()
					require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
						winblend = 10,
						previewer = false,
					}))
				end,
				desc = "Fuzzy find in current buffer",
			},
			{
				"<leader>fg",
				function()
					require("telescope.builtin").git_files()
				end,
				desc = "Find Git file",
			},
			{
				"<leader>fh",
				function()
					require("telescope.builtin").help_tags()
				end,
				desc = "Find help tag",
			},
			{
				"<leader>fd",
				function()
					require("telescope.builtin").diagnostics()
				end,
				desc = "Find in diagnostics",
			},
		},
		opts = {
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = function(...)
							return require("telescope.actions").move_selection_next(...)
						end,
						["<C-k>"] = function(...)
							return require("telescope.actions").move_selection_previous(...)
						end,
					},
				},
			},
		},
	},
}
