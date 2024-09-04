local bufferline = require("bufferline")
return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      mode = "buffers",
      themable = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      enforce_regular_tabs = false,
      style_preset = bufferline.style_preset.minimal,
    },
  },
}
