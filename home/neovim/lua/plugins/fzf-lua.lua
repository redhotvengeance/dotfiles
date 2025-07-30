vim.pack.add({
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/ibhagwan/fzf-lua" },
})

require("fzf-lua").setup({ "telescope" })

vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "[f]ind [f]ile" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<cr>", { desc = "[f]ind [r]ecent file" })
vim.keymap.set("n", "<leader>fw", "<cmd>FzfLua grep_cword<cr>", { desc = "[f]ind [w]ord (under cursor)" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua git_files<cr>", { desc = "[f]ind [g]it file" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>", { desc = "[f]ind [h]elp tag" })
vim.keymap.set("n", "<leader>fd", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "[f]ind in [d]iagnostics" })
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", { desc = "[f]ind [k]eymap" })
vim.keymap.set("n", "<leader><space>", "<cmd>FzfLua buffers<cr>", { desc = "Open buffers" })
vim.keymap.set("n", "<leader>/", "<cmd>FzfLua lgrep_curbuf<cr>", { desc = "Fuzzy find in current buffer" })
vim.keymap.set("n", "<leader>?", "<cmd>FzfLua live_grep<cr>", { desc = "Grep" })
vim.keymap.set("n", "<leader>:", "<cmd>FzfLua command_history<cr>", { desc = "Command history" })
vim.keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<cr>", { desc = "[g]oto [d]efinition" })
vim.keymap.set("n", "gr", "<cmd>FzfLua lsp_references<cr>", { desc = "[g]oto [r]eferences" })
vim.keymap.set("n", "gI", "<cmd>FzfLua lsp_implementations<cr>", { desc = "[g]oto [I]mplementation" })
vim.keymap.set("n", "<leader>D", "<cmd>FzfLua lsp_typedefs<cr>", { desc = "Type [D]efinition" })
vim.keymap.set("n", "<leader>ds", "<cmd>FzfLua lsp_document_symbols<cr>", { desc = "[d]ocument [s]ymbols" })
vim.keymap.set("n", "<leader>ws", "<cmd>FzfLua lsp_live_workspace_symbols<cr>", { desc = "[w]orkspace [s]ymbols" })
