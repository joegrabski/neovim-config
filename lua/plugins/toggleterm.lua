return {
  "akinsho/toggleterm.nvim",
  version = "*",
  init = function()
    require("toggleterm").setup({
      open_mapping = [[<c-t>]],
      direction = "float",
      start_in_insert = true,
      size = 55,
      shade_terminals = true,
      authchdir = true,
      terminal_mappings = true,
      close_on_exit = false,
      float_opts = {
        border = "curved",
        winblend = 0,
      },
    })
  end,
}
