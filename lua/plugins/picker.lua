return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        matcher = {
          frecency = true,
        },
        sources = {
          grep = {
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["grr"] = {
            function() require("snacks").picker.lsp_references() end,
            desc = "LSP references",
          },
        },
      },
    },
  },
}
