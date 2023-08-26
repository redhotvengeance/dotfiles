return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>jj",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash"
    },
    {
      "<leader>jt",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter"
    },
    {
      "<leader>jr",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash"
    },
    {
      "<leader>jts",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Treesitter Search"
    },
    {
      "<c-f>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search"
    },
  },
}
