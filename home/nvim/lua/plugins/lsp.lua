return {
  "neovim/nvim-lspconfig",
  lazy = true,
  cmd = "LspInfo",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    {
      "williamboman/mason.nvim",
      config = true
    },
    "williamboman/mason-lspconfig.nvim",
    {
      "j-hui/fidget.nvim",
      tag = "legacy",
      opts = {}
    },
  },
  config = function()
    local servers = {
      bashls = {},
      cssls = {},
      gopls = {},
      html = {},
      jsonls = {},
      lua_ls = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
      marksman = {},
      pylsp = {},
      sqlls = {},
      tsserver = {},
      yamlls = {},
    }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
    })

    mason_lspconfig.setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
          on_attach = function(_, bufnr)
            local opts = function(desc)
              if desc then
                desc = "LSP: " .. desc
              end

              return { buffer = bufnr, desc = desc }
            end

            vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("Goto definition"))
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts("Goto declaration"))
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts("Goto implementation"))
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts("Hover documentation"))
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts("Signature documentation"))
            vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts("Add workspace folder"))
            vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts("Remove workspace folder"))
            vim.keymap.set("n", "<leader>wl", function()
              print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, opts("List workspace folders"))
            vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts("Type definition"))
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts("Rename"))
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts("Code action"))
            vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts("Goto references"))
            vim.keymap.set("n", "<leader>f", function()
              vim.lsp.buf.format { async = true }
            end, opts("Format file"))
            vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, opts("Document symbols"))
            vim.keymap.set("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols,
              opts("Workspace symbols"))

            vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
              vim.lsp.buf.format()
            end, { desc = "Format current buffer with LSP" })
          end,
          settings = servers[server_name],
          filetypes = (servers[server_name] or {}).filetypes,
        })
      end
    })
  end
}
