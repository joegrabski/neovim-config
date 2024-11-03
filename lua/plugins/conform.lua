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
      ["css"] = { "prettier" },
      ["scss"] = { "prettier" },
      ["less"] = { "prettier" },
      ["html"] = { "prettier" },
      ["json"] = { "prettier" },
      ["jsonc"] = { "prettier" },
      ["markdown"] = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      ["graphql"] = { "prettier" },
      ["handlebars"] = { "prettier" },
    },
  },
}
