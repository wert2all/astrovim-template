local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local angular_cmd = {
  "ngserver",
  "--stdio",
  "--tsProbeLocations",
  install_path,
  "--ngProbeLocations",
  install_path .. "/@angular/language-server/node_modules",
}
return {
  "AstroNvim/astrolsp",
  opts = {
    config = {
      angularls = {
        cmd = angular_cmd,
        on_new_config = function(new_config, _) new_config.cmd = angular_cmd end,
      },
    },
  },
}
