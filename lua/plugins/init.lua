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

  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release"
  }
}

