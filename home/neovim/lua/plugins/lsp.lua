vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://git.sr.ht/~whynothugo/lsp_lines.nvim" },
})

vim.lsp.enable({
  "bashls",
  "cssls",
  "gopls",
  "html",
  "htmx",
  "hyprls",
  "jsonls",
  "lua_ls",
  "marksman",
  "pyright",
  "sqlls",
  "tailwindcss",
  "templ",
  "ts_ls",
  "yamlls",
})

require("lsp_lines").setup()

vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = false
})

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[f]ormat file" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[g]oto [D]eclaration" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[c]ode [a]ction" })
