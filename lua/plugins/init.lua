return {
  --[[
  *****************************************************************
  *                       VISUAL PLUGINS                          *
  *****************************************************************
  ]]
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },

  --[[
  *****************************************************************
  *                         GIT PLUGINS                           *
  *****************************************************************
  ]]
  "lewis6991/gitsigns.nvim",

  --[[
  *****************************************************************
  *                     NAVIGATION PLUGINS                        *
  *****************************************************************
  ]]
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },

  --[[
  *****************************************************************
  *                        CODE PLUGINS                           *
  *****************************************************************
  ]]
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      pcall(require("nvim-treesitter.install").update { with_sync = true })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    }
  },

  --[[
  *****************************************************************
  *                         MISC PLUGINS                          *
  *****************************************************************
  ]]
  "tpope/vim-sleuth",

  --[[
  *****************************************************************
  *                        UTILS PLUGINS                          *
  *****************************************************************
  ]]
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release"
  }
}

