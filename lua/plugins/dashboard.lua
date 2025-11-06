local btw = require "plugins.dashboard.btw"
local D = require "plugins.dashboard.functions"

local dev = [[
 ######                
 #     # ###### #    # 
 #     # #      #    # 
 #     # #####  #    # 
 #     # #      #    # 
 #     # #       #  #  
 ######  ######   ##   
]]
local forge = [[
                                   
 ▄▄▄▄▄▄                            
 █       ▄▄▄    ▄ ▄▄   ▄▄▄▄   ▄▄▄  
 █▄▄▄▄▄ █▀ ▀█   █▀  ▀ █▀ ▀█  █▀  █ 
 █      █   █   █     █   █  █▀▀▀▀ 
 █      ▀█▄█▀   █     ▀█▄▀█  ▀█▄▄▀ 
                       ▄  █        
                        ▀▀         
]]

return {
  btw,
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = dev,
        },
        sections = {
          {
            pane = 1,
            section = "terminal",
            height = 25,
            cmd = "cat | ~/.config/nvim/ansi/" .. D.getArt() .. ".sh",
          },
          { section = "header", pane = 2 },
          {
            pane = 2,
            icon = D.getIcon(),
            desc = D.getGreeting(),
            padding = 5,
          },
          {
            pane = 2,
            icon = " ",
            title = "Git Status",
            section = "terminal",
            enabled = function() return Snacks.git.get_root() ~= nil end,
            cmd = "git status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
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
          ["<Leader>c"] = {
            function()
              local bufs = vim.fn.getbufinfo { buflisted = 1 }
              require("astrocore.buffer").close(0)
              if not bufs[2] then
                -- require("btw").open()
                require("snacks").dashboard()
              end
            end,
            desc = "Close buffer",
          },
        },
      },
    },
  },
}
