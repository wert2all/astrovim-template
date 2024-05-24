return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<Leader>fB"] = { "<cmd>Telescope register<cr>", desc = "Resisters" },
        ["<Leader>fr"] = { "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
      },
    },
  },
}
