vim.pack.add({
  { src = "https://github.com/stevearc/oil.nvim" },
})

require("oil").setup({
  default_file_explorer = true,
  float = {
    preview_split = "right",
  },
  view_options = {
    show_hidden = true,
  },
})

vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open Oil" })
vim.keymap.set("n", "<leader>-", function() require("oil").toggle_float() end, { desc = "Open Oil in floating window" })
