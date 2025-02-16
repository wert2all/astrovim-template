return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["grr"] = {
            function() Snacks.picker.lsp_references() end,
            desc = "LSP references",
          },
        },
      },
    },
  },
}
