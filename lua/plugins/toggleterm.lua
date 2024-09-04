return {
  "akinsho/toggleterm.nvim",
  version = "*",
  init = function()
    require("toggleterm").setup({
      open_mapping = [[<c-t>]],
      direction = "vertical",
      size = 55,
      shade_terminals = false,
      authchdir = true,
      terminal_mappings = true,
      shell = "zsh",
    })
  end,
}
