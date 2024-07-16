return {
  "folke/zen-mode.nvim",
  lazy = true,
  config = function()
    require("zen-mode").setup {
      plugins = {
        wezterm = {
          enabled = true,
          font = "+2",
        },
      },
      window = {
        width = 90,
      },
    }
  end,
  keys = {
    { "<leader>zz", function() require("zen-mode").toggle() end },
  },
}
