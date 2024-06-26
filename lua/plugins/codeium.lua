return {
  "Exafunction/codeium.vim",
  event = "User AstroFile",
  -- commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
  config = function()
    vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
    vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
    vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
    vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    vim.keymap.set("n", "<Leader>;", function()
      if vim.g.codeium_enabled == true then
        vim.cmd "CodeiumDisable"
      else
        vim.cmd "CodeiumEnable"
      end
    end, { noremap = true, desc = "Toggle Codeium active" })
  end,
}
