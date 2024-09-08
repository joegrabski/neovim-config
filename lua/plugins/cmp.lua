local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})
