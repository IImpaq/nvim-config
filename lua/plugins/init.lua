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
--[[
*****************************************************************
*                    CODE COMPLETION PLUGINS                    *
*****************************************************************
* Description: Here is everything coding related. This section  *
*              will make nvim feel like a real IDE. But faster  *
*****************************************************************
]]
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {},
    build = ':TSUpdate',
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
}
