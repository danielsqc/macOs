return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()

  -- Keybindings
  local keymap = vim.keymap

    keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark files you want to revisit later on" })
    keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
    keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Go to previous harpoon mark" })
    keymap.set("n", "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "View all project marks" })
    keymap.set("n", "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Navigates to file 1" })
    keymap.set("n", "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Navigates to file 2" })
    keymap.set("n", "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Navigates to file 3" })
    keymap.set("n", "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Navigates to file 4" })
    keymap.set("n", "<leader>h5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Navigates to file 5" })
    keymap.set("n", "<leader>h6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = "Navigates to file 6" })
    keymap.set("n", "<leader>h7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = "Navigates to file 7" })
    keymap.set("n", "<leader>h8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = "Navigates to file 8" })
    keymap.set("n", "<leader>h9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = "Navigates to file 9" })
  end,
}
