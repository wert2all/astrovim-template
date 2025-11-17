vim.api.nvim_create_user_command("YankAbsolutePath", function()
  local path = vim.fn.expand "%:p"
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("YankRelativePath", function()
  local path = vim.fn.fnamemodify(vim.fn.expand "%", ":.")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

return {
  "AstroNvim/astrocore",
}
