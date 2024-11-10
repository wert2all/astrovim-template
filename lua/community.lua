-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.angular" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.color.tint-nvim" },
  -- { import = "astrocommunity.completion.magazine-nvim" },

  -- doubtful
  -- { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
}
