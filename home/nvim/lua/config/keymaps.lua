-- move hightlighted lines with JK
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in place when using J
vim.keymap.set("n", "J", "mzJ`z")

-- scroll faster
vim.keymap.set("n", "<C-e>", "3<C-e>")
vim.keymap.set("n", "<C-y>", "3<C-y>")

-- keep cursor in middle of screen when scrolling with C-d and C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in middle of screen when jumping through search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste into the void
vim.keymap.set("x", "<leader>p", [["_dP]])

-- just don't
vim.keymap.set("n", "Q", "<nop>")

-- quick close buffer
vim.keymap.set("c", "qq", "bd")

vim.keymap.set({ "n", "v" }, "<leader>c", [["_c]], { desc = "Change into the void" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete into the void" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })
vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Autofill sed with word under cursor" }
)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank into system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank rest of line into system clipboard" })
vim.keymap.set("n", "<C-w>h", "<C-w>s", { desc = "Split window horizontally" })
