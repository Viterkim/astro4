---@type LazySpec
return {
  {
    "petertriho/nvim-scrollbar",
    config = function() require("scrollbar").setup() end,
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup() end,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function() require("lsp_lines").setup() end,
  },
  {
    "kylechui/nvim-surround",
    config = function() require("nvim-surround").setup() end,
  },
  {
    "mg979/vim-visual-multi",
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "svermeulen/vim-cutlass",
  },
  {
    "nvim-pack/nvim-spectre",
  },
}
