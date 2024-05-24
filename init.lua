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

local dap, dapui = require("dap"), require("dapui")

-- Setup dapui
dapui.setup()

-- Automatically open/close dapui when starting/ending debug sessions
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
