
local wk= require("which-key")


-- vim.api.nvim_set_keymap("n", "<F5>", "<cmd>!python % <CR>", {}) -- run programs
vim.api.nvim_set_keymap("n", "qq", ":qa!", {}) -- press enter to exit
vim.api.nvim_set_keymap("n", "wq", ":wqa!", {}) -- press enter to save and exit
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {}) -- press jj for nodrmal mode [a-o-i== insert mode]


-- Run Programs by space+r inside vim
local function run_curr_python_file()

    local name=vim.fn.expand('%:t')
    if vim.fn.expand('%:e'):match('[^.]+$') == 'py' then
        vim.api.nvim_feedkeys(":ToggleTerm\npython "..name.."\n","n", false)

    end
    if vim.fn.expand('%:e'):match('[^.]+$') == 'js' then
        vim.api.nvim_feedkeys(":ToggleTerm\nnode "..name.."\n","n", false)
    end
end

vim.keymap.set({'n'}, '<space>r', '', { 
    desc = "Run .py file via Neovim built-in terminal", 
    callback = run_curr_python_file
})


-- flash.nvim
wk.register({
  s={
    name = "Search",
    a = { "<cmd>Telescope<cr>", "Telescope" },
  },
  m={
    -- flash in a plugin for motion and jumping
    name="me: flash",
    j={function() require('flash').jump() end, "flash jump"},
    t={function() require('flash').treesitter() end, "flash treesitter"},
    r={function() require('flash').treesitter_search() end, "flash treesitter search"},
  }
},{prefix = "<leader>"})





