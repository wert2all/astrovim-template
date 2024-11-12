return {
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      if vim.tbl_get(opts, "options", "opt", "showtabline") then opts.options.opt.showtabline = nil end
    end,
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.tabline = nil -- remove tabline
      opts.winbar = nil -- remove winbar
    end,
  },
}
