local function openDashboard()
  local bufs = vim.fn.getbufinfo { buflisted = 1 }
  require("astrocore.buffer").close(0)
  if not bufs[2] then require("btw").open() end
end

return {
  {
    "letieu/btw.nvim",
    config = function(_, opts) require("btw").setup(opts) end,
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>c"] = { openDashboard, desc = "Close buffer exept current" },
        },
      },
    },
  },
}
