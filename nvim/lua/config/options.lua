-- set the leaders
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true -- line numbers are kinda important
vim.opt.relativenumber = true -- count is slow
vim.opt.smartindent = true -- indent my stuff
vim.opt.wrap = false -- line wrapping is bad
vim.opt.termguicolors = true -- colors are good
vim.opt.updatetime = 50 -- fast is fast
vim.opt.colorcolumn = "80" -- show textwidth guide

-- spaces spaces spaces
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

-- keep a buffer of 8 lines as i scroll
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- case stuff while searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- make my undos go back a long time
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
