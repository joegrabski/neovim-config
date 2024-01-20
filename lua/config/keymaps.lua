local map = vim.keymap.set
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
map("n", "<C-1>", "<Cmd>Telescope neovim-project discover<cr>", { desc = "Switch project", remap = true })
-- Shift + Up/Down to move line up/down
-- Using H/L to go to the begining and the end of line
-- Note: H will map to _ (the first non-whitespace character of a line)
-- It would be helpful if it is a indent line in some languages like Python, Ruby, YAML, ...
-- map("n", "H", "_")
-- map("n", "L", "$")
-- use U for redo :))
map("n", "U", "<C-r>", {})
-- auto add closing {, [, (, ', ", <
map("i", "{<cr>", "{<cr>}<ESC>kA<CR>", {})
closing_pairs = { "}", ")", "]", '"', "'", ">" }
opening_pairs = { "{", "(", "[", '"', "'", "<" }
for key, chr in pairs(opening_pairs) do
  map("i", chr, chr .. closing_pairs[key] .. "<esc>i", {})
end
