local D = require "plugins.dashboards.functions"

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      sections = {
        {
          pane = 1,
          section = "terminal",
          height = 25,
          cmd = "cat | ~/.config/nvim/ansi/" .. D.getArt() .. ".sh",
        },
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
}
