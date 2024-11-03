return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")

    -- Color table for highlights
    local colors = {
      bg = "NONE",
      fg = "#cfd0d7",
      white = "#ffffff",
      yellow = "#e9d26c",
      cyan = "#7eb7e6",
      darkblue = "#272932",
      green = "#94dd8e",
      orange = "#e9d26c",
      violet = "#d895c7",
      magenta = "#d895c7",
      blue = "#7eb7e6",
      red = "#e85a84",
    }

    local conditions = {
      buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
      end,
      hide_in_width = function()
        return vim.fn.winwidth(0) > 80
      end,
      check_git_workspace = function()
        local filepath = vim.fn.expand("%:p:h")
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
      end,
    }

    -- Config
    local config = {
      options = {
        -- Disable sections and component separators
        component_separators = "",
        section_separators = "",
        theme = {
          -- are just setting default looks o statusline
          normal = { c = { fg = colors.white, bg = colors.bg, gui = "bold" } },
          inactive = { x = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
        },
      },
      sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        -- These will be filled later
        lualine_c = {},
        lualine_x = {},
      },
      inactive_sections = {
        -- these are to remove the defaults
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
    }

    -- Inserts a component in lualine_c at left section
    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    -- Inserts a component in lualine_x at right section
    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    ins_left({
      "mode",
      color = function()
        -- auto change color according to neovims mode
        local mode_color = {
          n = colors.bg,
          i = colors.green,
          v = colors.violet,
          [""] = colors.magneta,
          V = colors.magenta,
          c = colors.red,
          no = colors.red,
          s = colors.orange,
          S = colors.orange,
          [""] = colors.orange,
          ic = colors.yellow,
          R = colors.violet,
          Rv = colors.violet,
          cv = colors.red,
          ce = colors.red,
          r = colors.cyan,
          rm = colors.cyan,
          ["r?"] = colors.cyan,
          ["!"] = colors.red,
          t = colors.red,
        }
        return { bg = mode_color[vim.fn.mode()] }
      end,
    })

    ins_left({
      "filename",
      cond = conditions.buffer_not_empty,
      color = { fg = colors.red, gui = "bold" },
    })

    ins_left({ "location", color = { fg = colors.fg } })

    ins_left({ "progress", color = { fg = colors.fg } })

    ins_left({
      "diagnostics",
      sources = { "nvim_diagnostic" },
      symbols = { error = " ", warn = " ", info = " " },
      diagnostics_color = {
        error = { fg = colors.red },
        warn = { fg = colors.yellow },
        info = { fg = colors.cyan },
      },
    })

    -- Insert mid section. You can make any number of sections in neovim :)
    -- for lualine it's any number greater then 2
    ins_left({
      function()
        return "%="
      end,
    })

    ins_left({
      -- Lsp server name .
      function()
        local msg = "No Active Lsp"
        local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
        local clients = vim.lsp.get_clients()
        if next(clients) == nil then
          return msg
        end
        for _, client in ipairs(clients) do
          local filetypes = client.config.filetypes
          if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
            return client.name
          end
        end
        return msg
      end,
      icon = " LSP:",
      color = { fg = "#ffffff", gui = "bold" },
    })

    -- Add components to right sections
    ins_right({
      "o:encoding",
      fmt = string.upper,
      cond = conditions.hide_in_width,
      color = { fg = colors.fg, gui = "bold" },
    })

    ins_right({
      "fileformat",
      fmt = string.upper,
      icons_enabled = false,
      color = { fg = colors.fg, gui = "bold" },
    })

    ins_right({
      "branch",
      icon = "",
      color = { fg = colors.green, gui = "bold" },
    })

    ins_right({
      "diff",
      -- Is it me or the symbol for modified us really weird
      symbols = { added = " ", modified = "󰝤 ", removed = " " },
      diff_color = {
        added = { fg = colors.blue },
        modified = { fg = colors.orange },
        removed = { fg = colors.red },
      },
      cond = conditions.hide_in_width,
    })

    lualine.setup(config)
  end,
}
