-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "angular",
      "bash",
      "css",
      "diff",
      "dockerfile",
      "dot",
      "editorconfig",
      "gitcommit",
      "gitignore",
      "go",
      "graphql",
      "html",
      "hyprlang",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "nginx",
      "nix",
      "php",
      "scss",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
  },
}
