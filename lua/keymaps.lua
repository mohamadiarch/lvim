
local wk= require("which-key")





-- vim.api.nvim_set_keymap("n", "<F5>", "<cmd>!python % <CR>", {}) -- run programs
vim.api.nvim_set_keymap("i", "kk", "<CR>", {}) -- press kk for pressing enter in insermode
vim.api.nvim_set_keymap("n", "qq", ":qa!", {}) -- press enter to exit
vim.api.nvim_set_keymap("n", "wq", ":wqa!", {}) -- press enter to save and exit
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {}) -- press jj for nodrmal mode [a-o-i== insert mode]
vim.api.nvim_set_keymap("n", "ii", "<cmd>:startinsert<cr>", {}) -- ii for insert mode
vim.api.nvim_set_keymap("n", "i", "<CR>", {}) -- enter in normal mode



-- -- Run Programs by space+r inside vim
-- local function run_curr_python_file()

--     local name=vim.fn.expand('%:t')
--     if vim.fn.expand('%:e'):match('[^.]+$') == 'py' then
--         vim.api.nvim_feedkeys(":ToggleTerm\npython "..name.."\n","n", false)

--     end
--     if vim.fn.expand('%:e'):match('[^.]+$') == 'js' then
--         vim.api.nvim_feedkeys(":ToggleTerm\nnode "..name.."\n","n", false)
--     end
-- end

-- vim.keymap.set({'n'}, '<space>r', '', { 
--     desc = "Run .py file via Neovim built-in terminal", 
--     callback = run_curr_python_file
-- })


local function run_google_for_current_file()
  -- add chrome folder to your path
  local currnetPath=vim.api.nvim_buf_get_name(0)
  vim.api.nvim_feedkeys(":!chrome "..currnetPath.."\n","n", false)
end
vim.keymap.set({'n'}, '<space>rg', '', { 
    desc = "run_google_for_current_file", 
    callback = run_google_for_current_file
})




serach_dictionary = function(a)
  -- vim.api.nvim_command(":echo 'Hello from Lua!'")
  -- local currentLine = vim.fn.getline(".")
  local currnetPath = "https://www.ldoceonline.com/"
  local wordUnderCursor = vim.fn.expand("<cWORD>")  
  if a.args=="longman" then
    currnetPath ="https://www.ldoceonline.com/dictionary/" .. wordUnderCursor
  end
  if a.args=="cambridge" then
    currnetPath ="https://dictionary.cambridge.org/dictionary/english/" .. wordUnderCursor
  end
  if a.args=="oxford" then
    currnetPath ="https://www.oxfordlearnersdictionaries.com/definition/english/mom?q=" .. wordUnderCursor
  end
  if a.args=="google" then
    currnetPath ="https://www.google.com/search?q=" .. wordUnderCursor .. " meaning"
  end
  vim.api.nvim_feedkeys(":!chrome "..currnetPath.."\n","n", false)
end
vim.api.nvim_create_user_command("Dict", serach_dictionary, { desc = "Search word in dictionary" ,nargs = "*" })



-- vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })


-- flash.nvim
wk.register({
  s={
    -- there is lots of mapping with s in lunarvimg config
    name = "Search",
    a = { "<cmd>Telescope<cr>", "Telescope" },
  },
  -- k means up so you should wait for popup after pressing <leader>
  k={
    name="vscode",
    v = { "<cmd>:Glow<CR>", "markdown viewer" },
    c = { "<cmd>:PickColor<CR>", "Color picker" },
    ci = { "<cmd>:PickColorInsert<CR>", "Color picker insert" },
  },
  m={
    -- flash in a plugin for motion and jumping
    name="me",
    j={function() require('flash').jump() end, "flash jump"},
    t={function() require('flash').treesitter() end, "flash treesitter"},
    r={function() require('flash').treesitter_search() end, "flash treesitter search"},
  }
  ,
  r={
    name="run",
    r = { "<cmd>:RunCode<CR>", "run in bottom" },
    f = { "<cmd>:RunFile<CR>", "run file" },
    t = { "<cmd>:RunFile tab<CR>", "run in new tab" },
    p = { "<cmd>:RunProject<CR>", "run project" },
    c = { "<cmd>:RunClose<CR>", "run close" },
    crf = { "<cmd>:CRFiletype<CR>", "run CRFile" },
    crp = { "<cmd>:CRProjects<CR>", "run CRProjects" },
    l = { "<cmd>:Dict longman<CR>", "run longman" },
    o = { "<cmd>:Dict oxford<CR>", "run oxford" },
    k = { "<cmd>:Dict cambridge<CR>", "run cambridge" },
    G = { "<cmd>:Dict google<CR>", "run google" },
  }
},{prefix = "<leader>"})



              

