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
		{
			"nvim-telescope/telescope-ui-select.nvim",
			config = function()
				require("telescope").load_extension("ui-select")
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
	opts = function()
		local n_mappings = {}

		local i_mappings = {
			["<C-j>"] = {
				require("telescope.actions").move_selection_next,
				type = "action",
			},
			["<C-k>"] = {
				require("telescope.actions").move_selection_previous,
				type = "action",
			},
		}

		if pcall(require, "trouble.sources.telescope") then
			n_mappings["<C-t>"] = {
				require("trouble.sources.telescope").open,
				type = "action",
				opts = { desc = "open selected in [t]rouble" },
			}

			i_mappings["<C-t>"] = {
				require("trouble.sources.telescope").open,
				type = "action",
				opts = { desc = "open selected in [t]rouble" },
			}
		end

		return {
			defaults = {
				mappings = {
					n = n_mappings,
					i = i_mappings,
				},
			},
		}
	end,
}
