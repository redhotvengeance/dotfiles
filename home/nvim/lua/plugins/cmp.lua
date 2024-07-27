return {
	"hrsh7th/nvim-cmp",
	version = false,
	event = { "InsertEnter", "CmdLineEnter" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		{
			"L3MON4D3/LuaSnip",
			build = "make install_jsregexp",
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
			},
		},
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()
		luasnip.config.setup({})

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				-- Select the next item
				["<TAB>"] = cmp.mapping.select_next_item(),
				-- Select the previous item
				["<S-TAB>"] = cmp.mapping.select_prev_item(),

				-- Scroll documentation window down
				["<C-e>"] = cmp.mapping.scroll_docs(3),
				-- Scroll documentation window up
				["<C-y>"] = cmp.mapping.scroll_docs(-3),

				-- Cancel the completion
				["<C-c>"] = cmp.mapping.abort(),

				-- Accept the completion
				["<CR>"] = cmp.mapping.confirm({ select = false }),

				-- Manually trigger a completion from nvim-cmp
				["<C-Space>"] = cmp.mapping.complete(),

				-- Move forward through each of the expansion locations
				["<C-l>"] = cmp.mapping(function()
					if luasnip.expand_or_locally_jumpable() then
						luasnip.expand_or_jump()
					end
				end, { "i", "s" }),
				-- Move backward through each of the expansion locations
				["<C-h>"] = cmp.mapping(function()
					if luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					end
				end, { "i", "s" }),
			}),
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
				{ name = "buffer" },
			},
		})

		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			source = {
				{ name = "buffer" },
			},
		})

		cmp.setup.cmdline({ ":" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
			matching = { disallow_symbol_nonprefix_matching = false },
		})
	end,
}
