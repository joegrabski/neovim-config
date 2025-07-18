return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["javascript"] = { "biome" },
      ["javascriptreact"] = { "biome" },
      ["typescript"] = { "biome" },
      ["typescriptreact"] = { "biome" },
      ["cs"] = { "roslyn" },
      ["vue"] = { "prettier" },
      ["css"] = { "biome" },
      ["scss"] = { "biome" },
      ["html"] = { "biome" },
      ["python"] = { "black" },
      ["yaml"] = { "biome" },
      ["json"] = { "biome" },
      ["jsonc"] = { "biome" },
      ["markdown"] = { "biome" },
      ["markdown.mdx"] = { "biome" },
    },
  },
}
