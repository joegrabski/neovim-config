return {
  "nvim-treesitter/nvim-treesitter",
  event = "BufReadPost",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all" (the five listed parsers should always be installed)
      ensure_installed = {
        "typescript",
        "javascript",
        "tsx",
        "yaml",
        "c",
        "json",
        "python",
        "go",
        "c_sharp",
        "lua",
        "vim",
        "vimdoc",
        "markdown",
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
      highlight = {
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = true,
      },
    })
  end,
}
