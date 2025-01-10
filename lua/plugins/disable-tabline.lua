return {
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      if vim.tbl_get(opts, "options", "opt", "showtabline") then opts.options.opt.showtabline = nil end
      if vim.tbl_get(opts, "options", "opt", "laststatus") then opts.options.opt.laststatus = 0 end
    end,
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.tabline = nil -- remove tabline
      -- opts.winbar = nil -- remove winbar
      opts.statusline = nil -- rmove statusline
    end,
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = { ["<Leader>bb"] = false },
      },
    },
  },
}
