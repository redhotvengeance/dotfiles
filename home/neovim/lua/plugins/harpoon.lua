vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  {
    src = "https://github.com/ThePrimeagen/harpoon",
    version = "harpoon2",
  },
})

local harpoon = require("harpoon"):setup()
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "[a]dd file to harpoon list" })
vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "show [h] list" })
vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end, { desc = "switch to file in position [1]" })
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end, { desc = "switch to file in position [2]" })
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end, { desc = "switch to file in position [3]" })
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end, { desc = "switch to file in position [4]" })
