--
-- lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
-- table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

return {
  -- formatting = {
  --   source_names = {
  --     copilot = "(Copilot)",
  --   },
  -- },
  source_priority = {
    copilot = 1000,
    nvim_lsp = 900,
    luasnip = 800,
    buffer = 700,
    path = 600,
  }
}

