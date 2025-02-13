-- ["<leader>lx"] = {
--
--   desc = "LSP references",
-- },
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      defaults = {},
      pickers = {
        lsp_references = {
          theme = "dropdown",
        },
      },
    },
  },
}
