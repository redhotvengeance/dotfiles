return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "L3MON4D3/LuaSnip",
  },
  config = function()
    require("lsp-zero.cmp").extend({ set_extra_mappings = true })

    local cmp = require("cmp")

    cmp.setup({
      mapping = {
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }
    })
  end
}
