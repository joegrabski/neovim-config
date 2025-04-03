return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").setup({
      transparent = {
        bg = true,
        float = true,
      },
      noice = {
        style = "flat",
      },
      telescope = {
        style = "flat",
      },
      bright_border = true,
      bold_keywords = true,
      reduced_blue = false,
    })

    require("nordic").load()
  end,
}
