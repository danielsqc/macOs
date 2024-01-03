return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use

  {"christoomey/vim-tmux-navigator", -- tmux & split window navigation
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  "inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)

  "tpope/vim-surround",

  "wakatime/vim-wakatime",

  "easymotion/vim-easymotion",

  "glepnir/lspsaga.nvim",

  "jose-elias-alvarez/typescript.nvim",
}
