return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

--[[
*****************************************************************
*                         GIT PLUGINS                           *
*****************************************************************
]]
  -- Git client
  "tpope/vim-fugitive",
  -- GitHub extension to fugitive
  "tpope/vim-rhubarb",

--[[
*****************************************************************
*                       VISUAL PLUGINS                          *
*****************************************************************
]]
  -- Status line at the bottom of the screen
  'nvim-lualine/lualine.nvim',

--[[
*****************************************************************
*                  FILE MANAGEMENT PLUGINS                      *
*****************************************************************
]]
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
--[[
*****************************************************************
*                    CODE COMPLETION PLUGINS                    *
*****************************************************************
* Description: Here is everything coding related. This section  *
*              will make nvim feel like a real IDE. But faster  *
*****************************************************************
]]
  "folke/neodev.nvim",
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {},
    build = ':TSUpdate',
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate"
  },
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
      "j-hui/fidget.nvim",
      tag = "legacy"
  },
  "onsails/lspkind.nvim",
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      "rafamadriz/friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
    }
  },

--[[
*****************************************************************
*                         MISC PLUGINS                          *
*****************************************************************
* Description: These plugins don't need any particular          *
*              configuration. That's why they are just included *
*              here without any particular settings.            *
*****************************************************************
]]
  -- Automatic spacing detection
  "tpope/vim-sleuth",
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },
}
