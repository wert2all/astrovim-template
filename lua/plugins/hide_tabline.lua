return {
  {
    "AstroNvim/astrocore",
    opts = {
      options = {
        opt = {
          showtabline = 0,
        },
      },
    },
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.tabline = nil -- remove tabline
    end,
  },
}
