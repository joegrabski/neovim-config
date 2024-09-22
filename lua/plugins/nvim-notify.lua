return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      stages = "slide",
      background_colour = "FloatShadow",
      render = "compact",
      timeout = 2000,
    })
    vim.notify = require("notify")
  end,
}
