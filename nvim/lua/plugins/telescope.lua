return {
  {
    "nvim-telescope/telescope.nvim",
    -- install fzf native
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
    },
    keys = {
      -- browse file
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
      -- browse plugin files
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find plugin file",
      },
      -- browse recent files
      {
        "<leader>fo",
        "<cmd>Telescope oldfiles<cr>",
        desc = "Recent",
      },
      -- browse open buffers
      {
        "<leader>b",
        "<cmd>Telescope buffers<cr>",
        desc = "Open buffers",
        nowait = true,
      },
      {
        "<leader>fs",
        function()
          require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
        end,
        desc = "Grep",
      },
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = function(...)
              return require("telescope.actions").move_selection_next(...)
            end,
            ["<C-k>"] = function(...)
              return require("telescope.actions").move_selection_previous(...)
            end,
          },
        },
      },
    },
  },
}
