---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        -- delete single character without copying into register
        ["x"] = { '"_x' },

        -- Vertical scroll and center
        ["<C-d>"] = { "<C-d>zz" },
        ["<C-u>"] = { "<C-u>zz" },

        -- Find and center
        ["n"] = { "nzzzv" },
        ["N"] = { "Nzzzv" },
      },
      v = {
        -- Stay in indent mode
        ["<"] = { "<gv" },
        [">"] = { ">gv" },
      },
    },
  },
}
