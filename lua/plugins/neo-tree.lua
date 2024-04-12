return {
  {
    "neo-tree.nvim",
    config = function()
      require("neo-tree").setup {
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
            open_on_setup = true,
            open_on_setup_file = false,
          },
          follow_current_file = true,
          hijack_netrw_behavior = "open_current",
          use_libuv_file_watcher = true,
        },
        window = {
          width = 25,
          mappings = {
            ["l"] = "open_vsplit",
            -- ["L"] = "open_ssplit", doesn't work
            ["s"] = "",
            ["S"] = "",
          },
        },
      }
    end,
  },
}
