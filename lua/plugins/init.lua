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
}

