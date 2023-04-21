return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- lsp support
    { 'neovim/nvim-lspconfig' }, -- required
    -- optional
    {
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    { 'williamboman/mason-lspconfig.nvim' }, -- optional

    -- autocompletion
    { 'hrsh7th/nvim-cmp' },     -- required
    { 'hrsh7th/cmp-nvim-lsp' }, -- required
    { 'L3MON4D3/LuaSnip' },     -- required
  },
  config = function()
    local lsp = require('lsp-zero').preset({})

    lsp.on_attach(function(_, bufnr)
      lsp.default_keymaps({ buffer = bufnr })
    end)

    require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

    lsp.setup()

    local cmp = require('cmp')
    local cmp_action = require('lsp-zero').cmp_action()

    cmp.setup({
      mapping = {
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
      }
    })
  end,
}
