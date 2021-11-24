local cmp = require("cmp")
cmp.setup {
  mapping = {
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm(
      {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true
      }
    )
  },
  sorting = {
    priority_weight = 1
  },
  -- You should specify your *installed* sources.
  sources = {
    {name = "nvim_lsp"},
    {name = "buffer"},
    {name = "neorg"},
    {name = "path"}
  }
}
