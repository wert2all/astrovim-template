return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    popup_border_style = "single",
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
        },
        always_show = {
          ".env",
        },
      },
    },
    close_if_last_window = true,
  },
}
