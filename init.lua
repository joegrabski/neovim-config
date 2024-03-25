-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0.2
  vim.g.neovide_cursor_vfx_mode = ""
  vim.g.neovide_scroll_animation_length = 0.15
  vim.o.guifont = "Monaspace Neon:h14"
end
