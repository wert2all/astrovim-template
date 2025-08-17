return {
  "AstroNvim/astrocore",
  opts = {
    mappings = {
      n = {
        ["<Leader>z"] = {
          function() require("snacks").zen() end,
          desc = "Zen mode",
        },
      },
    },
  },
}
