return {
  "gen740/SmoothCursor.nvim",
  config = function()
    require("smoothcursor").setup {
      cursor = "",
      fancy = {
        enable = true,
        head = { cursor = "" },
        body = {
          { cursor = "󰝥" },
          { cursor = "󰝥" },
          { cursor = "●" },
          { cursor = "●" },
          { cursor = "•" },
          { cursor = "." },
          { cursor = "." },
        },
      },
    }
  end,
}
