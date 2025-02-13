return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["grr"] = {
            function() require("fzf-lua").lsp_references() end,
            desc = "LSP references",
          },
        },
      },
    },
  },
}
