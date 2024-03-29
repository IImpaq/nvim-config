return {
  { "catppuccin/nvim",       name = "catppuccin", priority = 1000 },

  --[[
*****************************************************************
*                         GIT PLUGINS                           *
*****************************************************************
]]
  -- Git client
  "tpope/vim-fugitive",
  -- GitHub extension to fugitive
  "tpope/vim-rhubarb",
  "lewis6991/gitsigns.nvim",

  --[[
*****************************************************************
*                       VISUAL PLUGINS                          *
*****************************************************************
]]
  -- Status line at the bottom of the screen
  "nvim-lualine/lualine.nvim",
  {
    "romgrk/barbar.nvim",
    init = function() vim.g.barbar_auto_setup = false end,
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  { "ellisonleao/glow.nvim", config = true,       cmd = "Glow" },
  { "echasnovski/mini.indentscope", version = false },
  "rcarriga/nvim-notify",
  "stevearc/dressing.nvim",

  --[[
*****************************************************************
*                  FILE MANAGEMENT PLUGINS                      *
*****************************************************************
]]
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
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
    build = ':TSUpdate',
  },
  "nvim-treesitter/nvim-treesitter-textobjects",
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
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    dependencies = {
      "rafamadriz/friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
    }
  },
  "NMAC427/guess-indent.nvim",
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}
  },
  "github/copilot.vim",
  "Civitasv/cmake-tools.nvim",
  { "echasnovski/mini.pairs", version = false },

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
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  "phaazon/hop.nvim",
  -- Terminal within neovim
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  },
  "christoomey/vim-tmux-navigator",
}

