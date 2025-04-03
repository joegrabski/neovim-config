-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = vim.api.nvim_create_augroup("IndentBlanklineBigFile", {}),
--   pattern = "*",
--   callback = function()
--     if vim.api.nvim_buf_line_count(0) > 1000 then
--       require("indent_blankline.commands").disable()
--     end
--   end,
-- })

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("hi Statusline guibg=NONE ctermbg=NONE")
    vim.cmd("hi StatusLineNC guibg=NONE ctermbg=NONE")
    vim.cmd("hi Search guibg=NONE ctermbg=NONE")
    vim.cmd("hi BufferLineFill guibg=NONE ctermbg=NONE")
    vim.cmd("hi TabLineFill guibg=NONE ctermbg=NONE")
    vim.cmd("hi TabLine guibg=NONE ctermbg=NONE")
    vim.cmd("hi CursorColumn guibg=NONE ctermbg=NONE")
    vim.cmd("hi CursorLine guibg=NONE ctermbg=NONE")
    vim.cmd("hi WildMenu guibg=NONE ctermbg=NONE")
    vim.cmd("hi ColorColumn guibg=NONE ctermbg=NONE")
    vim.cmd("hi QuickFixLine guibg=NONE ctermbg=NONE gui=bold")
    vim.cmd("hi TreesitterContext guibg=NONE ctermbg=NONE gui=bold")
    vim.cmd("hi TreesitterContextLineNumber guibg=NONE ctermbg=NONE gui=bold guifg=#88c0d0")
    vim.cmd("hi CursorLineNr guibg=NONE ctermbg=NONE gui=bold guifg=#88c0d0")
    vim.cmd("hi LineNr guibg=NONE ctermbg=NONE gui=altfont guifg=#5e81ac")
    vim.cmd("hi Comment guibg=NONE ctermbg=NONE gui=italic guifg=#60728a")
    vim.cmd("hi Visual gui=italic guibg=#2e3440")
    vim.cmd("hi BufferLineBufferVisible guifg=#60728a")
    vim.cmd("hi BufferLineError guifg=#60728a")
    vim.cmd("hi BufferLineBackground guifg=#60728a")
    vim.cmd("hi BufferLineInfo guifg=#60728a")
  end,
})
