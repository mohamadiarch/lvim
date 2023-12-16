


lvim.plugins={
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  "nvim-telescope/telescope-project.nvim",
  "ellisonleao/glow.nvim",   -- you should install glow -- windows: choco install glow
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},
"CRAG666/code_runner.nvim",
-- you need to install install code-minimap
-- windows: ------> scoop bucket add extras  -----> scoop install code-minimap
"wfxr/minimap.vim",  
"petertriho/nvim-scrollbar",
"nvim-treesitter/playground",
"wakatime/vim-wakatime",
"dkarter/bullets.vim",
{
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  -- keys = {}, -- set in keymaps.lua
},
-- I think this plugin do not make me fast
-- { "johmsalas/text-case.nvim",
--   config = function()
--     require('textcase').setup {}
--   end
-- },
"Exafunction/codeium.vim",
  -- {
  --   "Exafunction/codeium.vim",
  --   config = function ()
  --     -- Change '<C-g>' here to any keycode you like.
  --     vim.keymap.set('i', '<M-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
  --     vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
  --     vim.keymap.set('i', '<c-y>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
  --     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  --   end
  -- }
}