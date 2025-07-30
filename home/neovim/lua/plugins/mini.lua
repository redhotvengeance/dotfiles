vim.pack.add({
  { src = "https://github.com/echasnovski/mini.ai" },
  { src = "https://github.com/echasnovski/mini.surround" },
})

require("mini.ai").setup()

require("mini.surround").setup({
  mappings = {
    add = '<C-s>a',
    delete = '<C-s>d',
    find = '<C-s>f',
    find_left = '<C-s>F',
    highlight = '<C-s>h',
    replace = '<C-s>r',
    update_n_lines = '<C-s>n',
    suffix_last = 'l',
    suffix_next = 'n',
  },
})
