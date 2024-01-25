return {
  "akinsho/toggleterm.nvim",
  version = "*",
  init = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
      direction = "vertical",
      size = 55,
      shade_terminals = true,
      -- add --login so ~/.zprofile is loaded
      -- https://vi.stackexchange.com/questions/16019/neovim-terminal-not-reading-bash-profile/16021#16021
      shell = "zsh --login",
    })
  end,
}
