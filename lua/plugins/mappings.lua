return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<Leader>fB"] = { "<cmd>Telescope registers<cr>", desc = "Resisters" },
        ["<Leader>fr"] = { "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
        ["<Leader>c"] = {
          function()
            require("astrocore.buffer").close(0)
            require("btw").open()
          end,
          desc = "Close buffer",
        },
        ["<Leader>uo"] = {
          function() vim.cmd "ASToggle" end,
          desc = "Toggle auto-save",
        },
        ["<Leader>e"] = {
          "<cmd>Neotree float reveal<cr>",
          desc = "Toggle Explorer",
        },
        ["<Leader>o"] = false,
      },
    },
  },
}
