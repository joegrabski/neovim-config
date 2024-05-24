local map = vim.keymap.set
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
map("n", "<C-p>", "<Cmd>Telescope neovim-project discover<cr>", { desc = "Switch project", remap = true })
-- use U for redo :))
map("n", "U", "<C-r>", {})
-- auto add closing {, [, (, ', ", <
-- map("i", "{<cr>", "{<cr>}<ESC>kA<CR>", {})
-- closing_pairs = { "}", ")", "]", '"', "'", ">" }
-- opening_pairs = { "{", "(", "[", '"', "'", "<" }
-- for key, chr in pairs(opening_pairs) do
--   map("i", chr, chr .. closing_pairs[key] .. "<esc>i", {})
-- end
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- auto move and indent highlighted things
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-S>", ":w<CR>", { noremap = true, silent = true })

map("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre",
})

map("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
map("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})

map("n", "<leader>du", '<cmd>lua require("dapui").toggle()<CR>', { noremap = true, silent = true })
