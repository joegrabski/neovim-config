return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/projects/*",
      "~/projects/transloadit/*",
      "~/.config/nvim/",
    },

    last_session_on_startup = false,
    session_manager_opts = {
      autosave_ignore_dirs = {
        vim.fn.expand("~"), -- don't create a session for $HOME/
        "/tmp",
        "~/projects/transloadit",
      },
      autosave_ignore_filetypes = {
        -- All buffers of these file types will be closed before the session is saved
        "ccc-ui",
        "gitcommit",
        "gitrebase",
        "qf",
        "toggleterm",
      },
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
