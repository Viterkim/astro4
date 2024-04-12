return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local actions = require "telescope.actions"
      require("telescope").setup {
        defaults = {
          mappings = {
            i = {
              ["<esc>"] = actions.close,
            },
          },
          file_ignore_patterns = {
            "node_modules",
            "target",
            "build",
          },
        },
      }
    end,
  },
}
