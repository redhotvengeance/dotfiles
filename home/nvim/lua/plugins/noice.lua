return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				render = "minimal",
				stages = "static",
				timeout = 2500,
			},
		},
		{
			"smjonas/inc-rename.nvim",
			config = function()
				require("inc_rename").setup()
				vim.keymap.set("n", "<leader>rn", ":IncRename ", { desc = "[r]e[n]ame" })
			end,
		},
	},
	config = function()
		require("noice").setup({
			cmdline = {
				view = "cmdline",
			},
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true, -- use a classic bottom cmdline for search
				long_message_to_split = true, -- long messages will be sent to a split
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
			routes = {
				{
					filter = {
						event = "msg_show",
						kind = "",
					},
					opts = { skip = true },
				},
			},
		})

		if pcall(require, "lualine") then
			require("lualine").setup({
				sections = {
					lualine_x = {
						{
							require("noice").api.statusline.mode.get,
							cond = require("noice").api.statusline.mode.has,
							color = { fg = "#ff9e64" },
						},
					},
				},
			})
		end
	end,
}
