return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<Leader>fp", "<cmd>Telescope file_browser<cr>", desc = "File browser" },
  },
}
