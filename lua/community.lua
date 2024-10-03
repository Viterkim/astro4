-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Other
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.search.nvim-spectre" },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.recipes.telescope-lsp-mappings" },
  -- Editing Support
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- Languages
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.go" },
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.docker" },
  -- { import = "astrocommunity.pack.bash" },
  -- { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.typescript" },
  -- {
  --   "AstroNvim/astrolsp",
  --   optional = true,
  --   opts = {
  --     autocmds = {
  --       eslint_fix_on_save = false,
  --     },
  --   },
  -- },
}
