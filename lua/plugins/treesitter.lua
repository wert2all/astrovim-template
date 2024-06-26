-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "diff",
      "dockerfile",
      "html",
      "gitignore",
      "graphql",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "luadoc",
      "php",
      "scss",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
      "go",
    },
  },
}
