local btw = require "plugins.dashboard.btw"

return {
  btw,
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>c"] = {
            function()
              local bufs = vim.fn.getbufinfo { buflisted = 1 }
              require("astrocore.buffer").close(0)
              if not bufs[2] then
                require("btw").open()
                 -- require("snacks").dashboard()
              end
            end,
            desc = "Close buffer",
          },
        },
      },
    },
  },
}
