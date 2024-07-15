return {
  "coffebar/neovim-project",
  opts = {
    projects = {
      "~/projects/*",
      "~/projects/transloadit/*",
      "~/projects/clearwatt/clearwatt-mono/",
      "~/projects/clearwatt/clearwatt-django/",
      "~/projects/clearwatt/evvn/src/apps/evvn-web/",
      "~/projects/clearwatt/evvn/src/apps/evvn-customer/evvn/",
      "~/projects/clearwatt/evvn/src/apps/pdf-generator/",
      "~/projects/clearwatt/evvn/src/apis/Evvn/",
      "~/.config/nvim/",
    },
    last_session_on_startup = false,
    dashboard_mode = true,
    session_manager_opts = {
      enabled = true,
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
      autosave_last_session = true,
      autosave_only_in_session = true,
      autosave_ignore_not_normal = true,
    },
  },
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
}
