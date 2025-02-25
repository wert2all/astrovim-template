local function openDashboard(plugin)
  local bufs = vim.fn.getbufinfo { buflisted = 1 }
  require("astrocore.buffer").close(0)
  if not bufs[2] then require(plugin).open() end
end

return {
  {
    "letieu/btw.nvim",
    lazy = true,
    config = function(_, opts) require("btw").setup(opts) end,
  },

  {
    "goolord/alpha-nvim",
    lazy = true,
    event = "VimEnter",
    enabled = true,
    dependencies = {},
    opts = function()
      require "alpha"
      require "alpha.term"

      local dashboard = require "alpha.themes.dashboard"
      local ansiArt = "gopher"

      local function getGreeting()
        local tableTime = os.date "*t"
        -- local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
        local hour = tableTime.hour
        local greetingsTable = {
          [1] = "  Sleep well",
          [2] = "  Good morning",
          [3] = "  Good afternoon",
          [4] = "  Good evening",
          [5] = "󰖔  Good night",
        }
        local greetingIndex = 0
        if hour == 23 or hour < 7 then
          greetingIndex = 1
          ansiArt = "thisisfine"
        elseif hour < 12 then
          greetingIndex = 2
          ansiArt = "gopher"
        elseif hour >= 12 and hour < 13 then
          greetingIndex = 3
          ansiArt = "apple"
        elseif hour >= 13 and hour < 18 then
          greetingIndex = 3
          ansiArt = "gopher_red"
        elseif hour >= 18 and hour < 21 then
          greetingIndex = 4
          ansiArt = "unicorn"
        elseif hour >= 21 then
          greetingIndex = 5
          ansiArt = "thisisfine"
        end
        return greetingsTable[greetingIndex]
        -- return "\t" .. datetime .. "\t" .. greetingsTable[greetingIndex] .. ", " .. name
      end

      local greeting = getGreeting()
      local width = 46
      local height = 25

      -- dashboard.section.header.val = vim.split(logo .. "\n" .. greeting, "\n")
      dashboard.section.header.val = greeting
      dashboard.section.header.opts.hl = "DashboardHeader"
      dashboard.section.header.opts.position = "center"
      dashboard.section.terminal.command = "cat | ~/.config/nvim/ansi/" .. ansiArt .. ".sh"
      dashboard.section.terminal.width = width
      dashboard.section.terminal.height = height
      dashboard.section.terminal.opts.redraw = true

      dashboard.section.buttons.val = {}
      dashboard.config.layout = {
        { type = "padding", val = 10 },
        dashboard.section.terminal,
        { type = "padding", val = 5 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 1 },
        dashboard.section.footer,
      }

      return dashboard
    end,
    config = function(_, opts) require("alpha").setup(opts.config) end,
  },

  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>c"] = { function() openDashboard "alpha" end, desc = "Close buffer exept current" },
        },
      },
    },
  },
}
