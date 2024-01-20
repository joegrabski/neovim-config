-- in your init.lua or init.vim.lua

-- Enable Neoformat
vim.g.neoformat_enabled_python = { "black" }
vim.g.neoformat_enabled_javascript = { "prettier" }
vim.g.neoformat_enabled_markdown = { "prettier" }

-- Map a key to format the entire buffer
vim.api.nvim_set_keymap("n", "<leader>nf", [[:Neoformat<CR>]], { noremap = true, silent = true })

-- Automatically format on save
vim.api.nvim_exec(
  [[
  autocmd BufWritePre * :Neoformat
]],
  false
)

return {
  "sbdchd/neoformat",
}
