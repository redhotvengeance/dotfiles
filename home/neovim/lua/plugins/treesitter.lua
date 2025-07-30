vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require "nvim-treesitter.configs".setup({
  auto_install = true,
  ensure_installed = {
    "bash",
    "css",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "luadoc",
    "markdown",
    "markdown_inline",
    "python",
    "query",
    "regex",
    "sql",
    "toml",
    "typescript",
    "vim",
    "vimdoc",
    "yaml",
  },
  highlight = {
    enabled = true,
  },
  indent = {
    enabled = true,
  },
})
