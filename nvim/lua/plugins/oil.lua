return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>n", function() require("oil").open() end, desc = "Open oil" },
  },
  config = function()
    require("oil").setup()
  end,
}
