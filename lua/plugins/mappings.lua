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
            local bufs = vim.fn.getbufinfo { buflisted = 1 }
            require("astrocore.buffer").close(0)
            if not bufs[2] then require("btw").open() end
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
