-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt -- aliasing

-- line number
opt.number = true

-- tabs & intendation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.conceallevel = 0

-- search
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
