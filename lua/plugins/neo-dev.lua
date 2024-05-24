return {
  "folke/neodev.nvim",
  opts = {},
  setup = function()
    require("neodev").setup({
      library = { plugins = { "nvim-dap-ui" }, types = true },
    })
  end,
}
