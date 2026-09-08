return {
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.g.gruvbox_material_foreground = "original"
      --background option can be hard, medium, soft
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_cursor = "auto"
      vim.g.gruvbox_material_statusline_style = "mix"
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    config = function()
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
      vim.g.sonokai_style = "shusia"
    end,
  },
  { "wilmanbarrios/palenight.nvim", lazy = true },
  { "samharju/synthweave.nvim", lazy = true },
  { "folke/tokyonight.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "vague2k/vague.nvim", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "fynnfluegge/monet.nvim", name = "monet", lazy = true },
  { "savq/melange-nvim", lazy = true },
  { "koalhack/darcubox-nvim", lazy = true },
  { "xeind/nightingale.nvim", lazy = true },
  { "Shatur/neovim-ayu", lazy = true },
  {
    "tanmaymanojgandhi/circadia",
    lazy = false,
    priority = 1000,
    init = function(plugin)
      local port_path = vim.fs.joinpath(plugin.dir, "ports", "neovim")
      local lua_path = vim.fs.joinpath(port_path, "lua", "?.lua")
      local lua_init = vim.fs.joinpath(port_path, "lua", "?", "init.lua")

      -- Register Lua paths
      package.path = package.path .. ";" .. lua_path .. ";" .. lua_init

      -- Directory to expose colorschemes to Neovim's picker
      local colors_dir = vim.fs.joinpath(vim.fn.stdpath "data", "circadia_colors", "colors")
      vim.fn.mkdir(colors_dir, "p")

      local variants = {
        ["circadia-dark"] = [[
          vim.o.background = "dark"
          require("circadia").setup()
        ]],
        ["circadia-light"] = [[
          vim.o.background = "light"
          require("circadia").setup()
        ]],
      }

      for name, code in pairs(variants) do
        local file = vim.fs.joinpath(colors_dir, name .. ".lua")
        local f = io.open(file, "w")
        if f then
          f:write(code)
          f:close()
        end
      end

      -- Add directory to runtime path
      vim.opt.rtp:prepend(vim.fs.joinpath(vim.fn.stdpath "data", "circadia_colors"))
    end,
  },
}
