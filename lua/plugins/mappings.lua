return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- CTRL
          ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
          ["<C-y>"] = {
            function() require("lsp_lines").toggle() end,
            desc = "Toggle lsp_lines",
          },
          ["<C-f>"] = { "<esc>$a;<esc>", desc = "Insert ; at end of line" },
          ["<C-t>"] = { "<esc>", desc = "For spamming to get out of stuff(we are already in normal mode)" },

          -- Own leadea i
          ["<leader>if"] = {
            function() vim.lsp.buf.code_action() end,
            desc = "LSP Fixes",
          },
          ["<leader>id"] = {
            function() vim.diagnostic.open_float() end,
            desc = "Float full diagnostics",
          },
          ["<leader>ic"] = {
            function()
              vim.diagnostic.open_float()
              vim.diagnostic.open_float()
              vim.cmd "normal! ggVGy"
              vim.cmd "close"
            end,
            desc = "Copy diagnostics to clipboard",
          },
          ["<leader>ii"] = {
            function() require("telescope.builtin").diagnostics() end,
            desc = "All diagnostics",
          },
          ["<leader>ip"] = {
            function() require("telescope.builtin").diagnostics() end,
            desc = "Search diagnostics",
          },
          ["<leader>io"] = {
            function() require("crates").show_features_popup() end,
            desc = "Show rust crate features",
          },
          ["<leader>it"] = {
            "<cmd>RustLsp hover actions<cr><cmd>RustLsp hover actions<cr>",
            desc = "LSP Hover Action",
          },
          ["<leader>iu"] = {
            "<cmd>AerialNavOpen<cr>",
            desc = "Aerial Navigation",
          },
          ["<leader>is"] = {
            "<cmd>AerialPrev<cr><cmd>RustLsp hover actions<cr><cmd>RustLsp hover actions<cr>",
            desc = "Current Func + Action",
          },
          ["<leader>iy"] = { "<cmd>let @+=expand('%:~:.')<cr>", desc = "Copy relative path" },
          -- This one doesn't work half the time
          ["<leader>ix"] = { "<cmd>e ++ff=unix<cr>", desc = "Fix windows endlines" },

          -- Keys
          ["ø"] = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          ["__"] = { ":w<cr>", desc = "Save File" },
          -- Doesn't seem to work
          ["<Bs>"] = { "x", desc = "Delete" },
          ["de"] = { "<S-v>ygvd", desc = "Cut" },

          -- Shift
          ["<S-Up>"] = { "<cmd>m-2<cr>", desc = "Moves line one up" },
          ["<S-Down>"] = { "<cmd>m+<cr>", desc = "Moves line one Down" },
          ["<S-l>"] = {
            "<cmd>:call vm#commands#add_cursor_up(0, 1)<cr>",
            desc = "Multicursor up",
          },
          ["<S-u>"] = {
            "<cmd>:call vm#commands#add_cursor_down(0, 1)<cr>",
            desc = "Multicursor down",
          },

          -- Spectre
          ["<leader>,a"] = { '<cmd>lua require("spectre").open()<CR>', desc = "Spectre" },
          ["<leader>,w"] = {
            '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
            desc = "Spectre search current word",
          },
          ["<leader>,p"] = {
            '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
            desc = "Spectre current file",
          },

          ["j"] = { "<C-o>" },
          ["J"] = { "<C-i>" },
          ["l"] = { "o<esc>" },

          -- Tabs / Buffers Movement
          ["S"] = {
            function() require("astrocore.buffer").nav(vim.v.count1) end,
            desc = "Next buffer",
          },
          ["R"] = {
            function() require("astrocore.buffer").nav(-vim.v.count1) end,
            desc = "Previous buffer",
          },

          -- Movement
          ["r"] = { "<C-u>" },
          ["s"] = { "<C-d>" },

          ["H"] = {
            function() require("smart-splits").move_cursor_left() end,
            desc = "Move to left split",
          },
          ["h"] = {
            function() require("smart-splits").move_cursor_right() end,
            desc = "Move to right split",
          },
          ["k"] = {
            function() require("smart-splits").move_cursor_down() end,
            desc = "Move to down split",
          },
          ["K"] = {
            function() require("smart-splits").move_cursor_up() end,
            desc = "Move to up split",
          },
        },
        i = {
          ["<C-y>"] = {
            function() require("lsp_lines").toggle() end,
            desc = "Toggle lsp_lines",
          },
          ["<C-f>"] = { "<esc>$a;<esc>:w<cr>", desc = "Insert ; at end of line" },
          ["<C-s>"] = { "<esc>:w<cr>a", desc = "Save File" },
          ["<C-t>"] = { "<esc>", desc = "Enter normal mode" },
          ["<C-p>"] = { "<esc>p", desc = "Paste" },
          ["<C-b>"] = { "<esc>P", desc = "Paste before" },
          ["<C-d>"] = {
            -- Pops up again and again
            function() require("lsp_signature").toggle_float_win() end,
            desc = "Toggle lsp signature help window",
          },
          ["__"] = { "<esc>:w<cr>", desc = "Save File + Enter normal mode" },
          ["_("] = { "_", desc = "Underscore (single fix)" },
        },
        v = {
          ["r"] = { "<C-u>" },
          ["s"] = { "<C-d>" },
          ["<S-Up>"] = { "<cmd>m-2<cr>", desc = "Moves line one up" },
          ["<S-Down>"] = { "<cmd>m+<cr>", desc = "Moves line one Down" },
          ["<C-y>"] = {
            function() require("lsp_lines").toggle() end,
            desc = "Toggle lsp_lines",
          },
          ["<C-t>"] = { "<esc>", desc = "Enter normal mode" },
          ["j"] = { "<esc>", desc = "Enter normal mode" },
          ["<C-b>"] = { "<esc>$a;<esc>", desc = "Insert ; at end of line" },
          ["__"] = { "<esc>:w<cr>", desc = "Save File + Enter normal mode" },
          ["<Bs>"] = { "x", desc = "Delete" },
          ["e"] = { "ygvd", desc = "Cut" },
          ["c"] = { "ygv", desc = "Copy + Keep selection" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {},
      },
    },
  },
}
