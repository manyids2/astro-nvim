return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "folke/trouble.nvim" },
  config = function()
    local trouble = require "trouble.providers.telescope"
    local telescope = require "telescope"
    telescope.setup {
      defaults = {
        mappings = {
          i = { ["<c-t>"] = trouble.open_with_trouble },
          n = { ["<c-t>"] = trouble.open_with_trouble },
        },
      },
    }
  end,
}
