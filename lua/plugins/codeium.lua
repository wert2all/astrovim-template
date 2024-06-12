---@type LazySpec
return {
  {
    "Exafunction/codeium.vim",
    event = "User AstroFile",
    opts = {
      enable_chat = false,
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            n = {
              ["<Leader>;"] = {
                name = " Codeium",
              },
              ["<Leader>;t"] = {
                desc = "Toggle Codeium active",
                function()
                  if vim.g.codeium_enabled == true then
                    vim.cmd "CodeiumDisable"
                  else
                    vim.cmd "CodeiumEnable"
                  end
                end,
              },
            },
          },
        },
      },
    },
    config = function()
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    dependencies = { "Exafunction/codeium.nvim" },
    opts = function(_, opts)
      -- Inject codeium into cmp sources, with high priority
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 10000,
      })
    end,
  },
  {
    "onsails/lspkind.nvim",
    optional = true,
    -- Adds icon for codeium using lspkind
    opts = function(_, opts) opts.symbol_map = { Codeium = "" } end,
  },
}
