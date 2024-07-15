return {
  "Yazeed1s/oh-lucy.nvim",
  config = function(_, opts)
    require("oh-lucy.nvim").setup(opts)
    vim.cmd([[colorscheme oh-lucy]])
  end,
}
