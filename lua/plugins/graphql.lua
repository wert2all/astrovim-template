return {
  {
    "letieu/graphql.nvim",
    dependencies = {
      { "AstroNvim/astroui", opts = { icons = { GQL = "󱂛" } } },
      {
        "AstroNvim/astrocore",
        optional = true,
        opts = function(_, opts)
          local maps = opts.mappings
          local prefix = "<Leader>q"

          maps.n[prefix] = { desc = require("astroui").get_icon("GQL", 1, true) .. "GraphQL" }

          maps.n[prefix .. "g"] = { function() require("graphql").open() end, desc = "Open GraphQL" }
          maps.n[prefix .. "q"] = { function() require("graphql").close() end, desc = "Close GraphQL" }
          maps.n[prefix .. "r"] = { function() require("graphql").run() end, desc = "Run GraphQL" }
        end,
      },
    },
  },
}
