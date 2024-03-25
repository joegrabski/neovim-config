return {
  "akinsho/toggleterm.nvim",
  version = "*",
  init = function()
    require("toggleterm").setup({
      open_mapping = [[<c-t>]],
      direction = "vertical",
      size = 55,
      shade_terminals = true,
      authchdir = true,
      terminal_mappings = true,
      -- add --login so ~/.zprofile is loaded
      -- https://vi.stackexchange.com/questions/16019/neovim-terminal-not-reading-bash-profile/16021#16021
      shell = "zsh",
    })
  end,
}
