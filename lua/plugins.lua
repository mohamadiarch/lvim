


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
"norcalli/nvim-colorizer.lua",
"ziontee113/color-picker.nvim",
{
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- keywords = {
    --   FIX = {
    --     icon = " ", -- icon used for the sign, and in search results
    --     color = "error", -- can be a hex color, or a named color (see below)
    --     alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
    --     -- signs = false, -- configure signs for some keywords individually
    --   },
    --   TODO = { icon = " ", color = "info" },
    --   HACK = { icon = " ", color = "warning" },
    --   WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    --   TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    -- },
    -- colors = {
    --   error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    --   warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    --   info = { "DiagnosticInfo", "#2563EB" },
    --   hint = { "DiagnosticHint", "#10B981" },
    --   default = { "Identifier", "#7C3AED" },
    --   test = { "Identifier", "#FF00FF" }
    -- },
  }
},
"ray-x/web-tools.nvim",
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
{
  "windwp/nvim-spectre",
  -- req: choco install sed
  event = "BufRead",
  config = function()
    require("spectre").setup({
      mapping={
        ['send_to_qf'] = {
          map = "<leader>Q", --does not have confilict with <leader>q and <C-q>
          cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
          desc = "send all items to quickfix"
      },
    }
    })
  end,
},
-- {
--   'Exafunction/codeium.vim',
--   config = function ()
--     -- Change '<C-g>' here to any keycode you like.
--     vim.keymap.set('i', '<space>gg', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
--     vim.keymap.set('i', '<c-h>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
--     vim.keymap.set('i', '<c-l>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
--     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
--     vim.keymap.set('i', '<C-k>', function() return vim.fn['codeium#Complete']() end, { expr = true, silent = true })
--   end
-- },
-- {
  -- doc created by freecodecamp. you can download it it your neovim
  -- "luckasRanarison/nvim-devdocs",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-telescope/telescope.nvim",
--     "nvim-treesitter/nvim-treesitter",
--   },
--   opts = {}
-- },
{
  "iamcco/markdown-preview.nvim", -- npm install yarn -g
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}

}