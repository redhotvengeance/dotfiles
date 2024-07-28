return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	dependencies = {
		{ "j-hui/fidget.nvim", opts = {} },
		{ "https://git.sr.ht/~whynothugo/lsp_lines.nvim" },
		{ "stevearc/conform.nvim", opts = {} },
	},
	config = function()
		local capabilities = nil
		local lspconfig = require("lspconfig")

		if pcall(require, "cmp_nvim_lsp") then
			capabilities = require("cmp_nvim_lsp").default_capabilities()
		end

		local servers = {
			bashls = {},
			cssls = {},
			gopls = {
				settings = {
					gopls = {
						hints = {
							assignVariableTypes = true,
							compositeLiteralFields = true,
							compositeLiteralTypes = true,
							constantValues = true,
							functionTypeParameters = true,
							parameterNames = true,
							rangeVariableTypes = true,
						},
					},
				},
			},
			html = {},
			jsonls = {},
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						telemetry = { enable = false },
						workspace = { checkThirdParty = false },
					},
				},
				server_capabilities = {
					semanticTokensProvider = nil,
				},
			},
			marksman = {},
			pyright = {},
			sqlls = {},
			tailwindcss = {},
			templ = {},
			tsserver = {
				server_capabilities = {
					documentFormattingProvider = false,
				},
			},
			yamlls = {},
		}

		local on_attach = function(client, bufnr)
			local builtin = require("telescope.builtin")
			local settings = servers[client.name]

			vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"

			local map = function(keys, func, desc)
				vim.keymap.set(
					"n",
					keys,
					func,
					{ desc = "LSP: " .. desc, buffer = bufnr, noremap = true, silent = true }
				)
			end

			map("gd", builtin.lsp_definitions, "[g]oto [d]efinition")
			map("gD", vim.lsp.buf.declaration, "[g]oto [D]eclaration")
			map("gr", builtin.lsp_references, "[g]oto [r]eferences")
			map("gI", builtin.lsp_implementations, "[g]oto [I]mplementation")
			map("K", vim.lsp.buf.hover, "Hover documentation")
			map("<leader>D", builtin.lsp_type_definitions, "Type [D]efinition")
			map("<leader>ds", builtin.lsp_document_symbols, "[d]ocument [s]ymbols")
			map("<leader>ws", builtin.lsp_dynamic_workspace_symbols, "[w]orkspace [s]ymbols")
			map("<leader>rn", vim.lsp.buf.rename, "[r]e[n]ame")
			map("<leader>ca", vim.lsp.buf.code_action, "[c]ode [a]ction")

			if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
				map("<leader>th", function()
					vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }))
				end, "[t]oggle Inlay [h]ints")
			end

			if settings.server_capabilities then
				for k, v in pairs(settings.server_capabilities) do
					client.server_capabilities[k] = v
				end
			end
		end

		for name, config in pairs(servers) do
			config = vim.tbl_deep_extend("force", {}, {
				capabilities = capabilities,
			}, config)

			config.on_attach = on_attach

			lspconfig[name].setup(config)
		end

		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
			},
		})

		conform.setup({
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})

		require("lsp_lines").setup()
		vim.diagnostic.config({ virtual_text = false })
	end,
}
