
local wk= require("which-key")

-- codeium keymaps are inside plugins.lua
-- codeium's default keybindings can be disabled by setting
vim.g.codeium_disable_bindings = 1


-- vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>lua toggle_line_end()<CR>', { noremap = true, silent = true })

-- function toggle_line_end()
--   print(vim.api.nvim_win_get_cursor)
--   -- local col = vim.api.nvim_win_get_cursor(0)[2]
--   -- if col == 0 then
--   --   vim.api.nvim_win_set_cursor(0, { vim.fn.line "$", -1 })
--   -- else
--   --   vim.api.nvim_win_set_cursor(0, { vim.fn.line "$", 0 })
--   -- end
-- end



vim.api.nvim_set_keymap("i", "<space>rr", "<esc><cmd>:w<CR><cmd>:RunCode<CR>i", {}) -- run code in insert mode
vim.api.nvim_set_keymap("i", "<space>ww", "<esc><cmd>:w<CR>a", {}) -- :w in insert mode
vim.api.nvim_set_keymap("i", "<space>//", "<esc>gcc<esc>$a", {}) -- :w in insert mode
vim.api.nvim_set_keymap("n", "qq", ":qa!", {}) -- press enter to exit
vim.api.nvim_set_keymap("n", "wq", ":wqa!", {}) -- press enter to save and exit
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {}) -- press jj for nodrmal mode [a-o-i== insert mode]
vim.api.nvim_set_keymap("i", "kk", "<CR>", {}) -- press kk for pressing enter in insermode
vim.api.nvim_set_keymap("i", "oo", "<C-o>o", {}) -- go to next line with oo in the middle of string
-- vim.api.nvim_set_keymap("n", "ii", "<cmd>:startinsert<cr>", {}) -- ii for insert mode
-- vim.api.nvim_set_keymap("n", "i", "<CR>", {}) -- enter in normal mode

----------------- <F1> <F12>
-- vim.api.nvim_set_keymap("n", "<F5>", "<cmd>!python % <CR>", {}) -- run programs

---------------------change default lunarvim---------------------------
local cmp_mapping = require "cmp.config.mapping"
local luasnip = require "luasnip"
local cmp=require("cmp")
function ToggleCompletion()
  if cmp.visible() then
      cmp.close()
  else
      require("cmp").complete()
  end
end
vim.api.nvim_set_keymap('i', '<c-b>', '<cmd>lua ToggleCompletion()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<c-b>', '<cmd>lua ToggleCompletion()<CR>', { noremap = true, silent = true })


-- lvim.builtin.cmp.mapping["<C-b>"] = cmp_mapping.close()
lvim.builtin.cmp.mapping["<C-e>"] = nil    -- this is for abbortion cmp popup, I write a code with <C-b> fot toggle
lvim.builtin.cmp.mapping["<Tab>"] = nil
lvim.builtin.cmp.mapping["<Down>"] = nil  -- when cmp pop is open you can navigate with down
lvim.builtin.cmp.mapping["<Up>"] = nil    -- when cmp pop is open you can navigate with up
lvim.builtin.cmp.mapping["<C-k>"]  = nil  -- still works I dont know why
lvim.builtin.cmp.mapping["<C-j>"]  = nil  -- still works I dont know why
lvim.builtin.cmp.mapping["K"] = cmp_mapping.select_prev_item()  -- shift+ k jump in menu
lvim.builtin.cmp.mapping["J"] = cmp_mapping.select_next_item()   -- shift+ j jump in menu
-- tab is not for jump in compeltion menu and ai accept
-- tab is just for jumping in snippet palceholder
lvim.builtin.cmp.mapping["<Tab>"] = cmp_mapping(function(fallback)
  if luasnip.expand_or_locally_jumpable() then
    luasnip.expand_or_jump()
  else
    fallback()
  end
end, { "i", "s" })


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




local serach_dictionary = function(a)
  -- vim.api.nvim_command(":echo 'Hello from Lua!'")
  -- local currentLine = vim.fn.getline(".")
  local currnetPath = "https://www.ldoceonline.com/"
  local wordUnderCursor = vim.fn.expand("<cWORD>")  
  if a.args=="longman" then
    currnetPath ="https://www.ldoceonline.com/dictionary/" .. wordUnderCursor
  elseif a.args=="cambridge" then
    currnetPath ="https://dictionary.cambridge.org/dictionary/english/" .. wordUnderCursor
  elseif a.args=="oxford" then
    currnetPath ="https://www.oxfordlearnersdictionaries.com/definition/english/" .. wordUnderCursor
  elseif a.args=="google" then
    currnetPath ="https://www.google.com/search?q=" .. wordUnderCursor .. " meaning"
  end
  vim.api.nvim_feedkeys(":!chrome "..currnetPath.."\n","n", false)
  local Efile= "C:\\Users\\mohammadi\\AppData\\Local\\lvim\\doc\\e_under_cursor.md"
  local fileHandle = io.open(Efile, "a") -- append mode
  fileHandle:write("\n" .. wordUnderCursor)
  fileHandle:close()
end
vim.api.nvim_create_user_command("Dict", serach_dictionary, { desc = "Search word in dictionary" ,nargs = "*" })




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
    -- flash in a plugin for motion and jumping
    j={function() require('flash').jump() end, "flash jump"},
    t={function() require('flash').treesitter() end, "flash treesitter"},
    r={function() require('flash').treesitter_search() end, "flash treesitter search"},
  },
  m={
    name="me",
  }
  ,
  r={
    name="run",
    r = { "<cmd>:w<CR><cmd>:RunCode<CR>i", "run in bottom" }, -- i for inset mode for input user
    f = { "<cmd>:RunFile<CR>", "run file" },
    t = { "<cmd>:RunFile tab<CR>", "run in new tab" },
    p = { "<cmd>:RunProject<CR>", "run project" },
    c = { "<cmd>:RunClose<CR>", "run close" },
    crf = { "<cmd>:CRFiletype<CR>", "run CRFile" },
    crp = { "<cmd>:CRProjects<CR>", "run CRProjects" },
    --dictionary
    l = { "<cmd>:Dict longman<CR>", "run longman" },
    o = { "<cmd>:Dict oxford<CR>", "run oxford" },
    k = { "<cmd>:Dict cambridge<CR>", "run cambridge" },
    G = { "<cmd>:Dict google<CR>", "run google" },
  }
},{prefix = "<leader>"})



              

