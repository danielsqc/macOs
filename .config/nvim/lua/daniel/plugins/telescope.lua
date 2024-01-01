return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "truncate " },
          mappings = {
            i = {
              ["<c-k>"] = actions.move_selection_previous, -- move to prev result
              ["<c-j>"] = actions.move_selection_next, -- move to next result
              ["<c-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
      })

      telescope.load_extension("fzf")
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}

-- backup (before adding ui-select)
-- return {
--   "nvim-telescope/telescope.nvim",
--   branch = "0.1.x",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     local telescope = require("telescope")
--     local actions = require("telescope.actions")
--
--     telescope.setup({
--       defaults = {
--         path_display = { "truncate " },
--         mappings = {
--           i = {
--             ["<c-k>"] = actions.move_selection_previous, -- move to prev result
--             ["<c-j>"] = actions.move_selection_next, -- move to next result
--             ["<c-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
--           },
--         },
--       },
--     })
--
--     telescope.load_extension("fzf")
--   end,
-- }
--
