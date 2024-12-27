return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      animation = "slide",
      render = "minimal",
    }
  end,
}
