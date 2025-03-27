if true then return {} end
return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true, -- add border to hover docs and signiture help
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opt)
      local cmp = require("cmp")
      opt.window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }
    end,
  },
}
