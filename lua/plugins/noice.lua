return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.notify = {
        enabled = true,
      }
      opts.presets.inc_rename = true
      opts.presets.lsp_doc_border = true
    end,
  },
  { "rcarriga/nvim-notify" },
}
