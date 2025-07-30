vim.pack.add({
  { src = "https://github.com/rose-pine/neovim" },
})

require("rose-pine").setup({
  styles = {
    transparency = true,
  },
})
vim.cmd("colorscheme rose-pine")
