return {
	"nvim-telescope/telescope.nvim",
	version = false,
	cmd = "Telescope",
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
		-- browse files
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			desc = "Find files",
		},
		-- browse recent files
		{
			"<leader>fr",
			function()
				require("telescope.builtin").oldfiles({ prompt_title = "Recent Files" })
			end,
			desc = "Recent files",
		},
		-- search for word under cursor
		{
			"<leader>fw",
			"<cmd>Telescope grep_string<cr>",
			mode = { "n", "v" },
			desc = "Search for word (under cursor)",
		},
		-- browse files tracked by git
		{
			"<leader>fg",
			function()
				require("telescope.builtin").git_files()
			end,
			desc = "Find Git file",
		},
		-- browse plugin files
		{
			"<leader>fp",
			function()
				require("telescope.builtin").find_files({
					cwd = require("lazy.core.config").options.root,
					prompt_title = "Plugin Files",
				})
			end,
			desc = "Find plugin file",
		},
		-- browse help
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Find help tag",
		},
		-- search through diagnostics
		{
			"<leader>fd",
			function()
				require("telescope.builtin").diagnostics()
			end,
			desc = "Find in diagnostics",
		},
		-- browse open buffers
		{
			"<leader><space>",
			"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
			desc = "Open buffers",
			nowait = true,
		},
		-- fuzzy find within current buffer
		{
			"<leader>/",
			"<cmd>Telescope current_buffer_fuzzy_find<cr>",
			desc = "Fuzzy find in current buffer",
		},
		-- search across entire project
		{
			"<leader>?",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Grep",
		},
		-- browse command history
		{
			"<leader>:",
			"<cmd>Telescope command_history<cr>",
			desc = "Command history",
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
}
