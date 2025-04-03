return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["javascript"] = { "biome" },
      ["javascriptreact"] = { "biome" },
      ["typescript"] = { "biome" },
      ["typescriptreact"] = { "biome" },
      ["cs"] = { "omnisharp" },
      ["vue"] = { "prettier" },
      ["css"] = { "biome" },
      ["scss"] = { "biome" },
      ["html"] = { "biome" },
      ["python"] = { "black" },
      ["yaml"] = { "prettier" },
      ["json"] = { "prettier" },
      ["jsonc"] = { "prettier" },
      ["markdown"] = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
    },
  },
}
