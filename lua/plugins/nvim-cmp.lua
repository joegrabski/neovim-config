return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "path" },
      { name = "cmdline" },
    })
    opts.mapping["<C-y>"] = cmp.mapping.confirm()
    return opts
  end,
}
