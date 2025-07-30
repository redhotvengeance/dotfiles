-- set the leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.expandtab = true -- spaces over tabs
vim.opt.ignorecase = true -- big == small
vim.opt.jumpoptions = "view" -- restore the mark view when jumping
vim.opt.laststatus = 3 -- global statusline
vim.opt.linebreak = true -- wrap lines at better points
vim.opt.list = true -- show those sneaky invisible chars
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- chars to represent the invisible chars
vim.opt.mouse = "a" -- mouse? ew...but okay, maybe sometimes...
vim.opt.number = true -- line numbers are kinda important
vim.opt.pumblend = 10 -- make popup semi-transparent
vim.opt.pumheight = 15 -- maximum number of entries in a popup
vim.opt.relativenumber = true -- counting is slow
vim.opt.scrolloff = 10 -- lines of context
vim.opt.shiftround = true -- round the indent
vim.opt.shiftwidth = 2 -- indent by 2 spaces
vim.opt.shortmess = "I" -- silent startup
vim.opt.showmode = false -- no need when lualine always shows it
vim.opt.sidescrolloff = 10 -- columns of context
vim.opt.signcolumn = "yes" -- always show the signs
vim.opt.smartcase = true -- only care about case when searching with case
vim.opt.smartindent = true -- indent my stuff for me
vim.opt.softtabstop = 2 -- tab equals 2 spaces
vim.opt.splitbelow = true -- always horizontal split below
vim.opt.splitkeep = "screen" -- stabilize text in splits
vim.opt.splitright = true -- always vertical split right
vim.opt.swapfile = false -- swaps are annoying
vim.opt.tabstop = 2 -- tab equals 2 spaces
vim.opt.termguicolors = true -- colors are good
vim.opt.timeoutlen = 300 -- quicken key triggers
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- dir for undos
vim.opt.undofile = true -- save undos to a file
vim.opt.undolevels = 10000 -- give me all that undo
vim.opt.updatetime = 200 -- fast is fast
vim.opt.virtualedit = "block" -- allow cursor to move to where there is no text in visual block mode
vim.opt.wildmode = "longest:full,full" -- command-line completion mode
vim.opt.winborder = "rounded" -- add border to pop-ups
vim.opt.wrap = false -- line wrapping is bad
