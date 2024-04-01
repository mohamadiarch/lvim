-- ctrl-z is for tesing so we should not assing <c-z> to something
local wk= require("which-key")

-- local actions = require('telescope.actions')
-- require('telescope').setup{
--   defaults = {
--     -- Default configuration for telescope goes here:
--     -- config_key = value,
--     mappings = {
--       n = {
--         -- map actions.which_key to <C-h> (default: <C-/>)
--         -- actions.which_key shows the mappings for your picker,
--         -- e.g. git_{create, delete, ...}_branch for the git_branches picker
--         ["<c-z>"] = actions.close
--       }
--     }
--   },
-- }










vim.g.codeium_disable_bindings = 1 -- codeium's default keybindings can be disabled 
vim.g.buffergator_suppress_keymaps = 1 -- disable default key-binding in buffergator plugin


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

  
-- vim.api.nvim_set_keymap("i", "<S-A>k", "yyp", {}) 
-- vim.api.nvim_set_keymap("i", "<space>rt", "<esc><cmd>:w<CR><M-1>i<UP>", {}) -- run code with args -- <spac>rt: run in newtab
-- vim.api.nvim_set_keymap("i", "<space>rr", "<esc><cmd>:w<CR><cmd>:RunCode<CR>i", {}) -- run code just to see output
vim.api.nvim_set_keymap("i", "<space>ww", "<esc><cmd>:w<CR>a", {}) -- :w in insert mode
vim.api.nvim_set_keymap("i", "<space>//", "<esc>gcc<esc>$a", {}) -- :w in insert mode
vim.api.nvim_set_keymap("n", "qq", ":qa!", {}) -- press enter to exit
vim.api.nvim_set_keymap("n", "qw", ":wqa!", {}) -- press enter to save and exit (wq has conflict by word navigation)
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {}) -- press jj for nodrmal mode [a-o-i== insert mode]
vim.api.nvim_set_keymap("i", "jk", "<CR>", {}) -- press jk for pressing enter in insermode
vim.api.nvim_set_keymap("i", "OO", "<C-o>o", {}) -- go to next line with oo in the middle of string
-- vim.api.nvim_set_keymap("n", "0", "^i", {})   -- insert start of line (A for end)
-- vim.api.nvim_set_keymap("n", "ii", "<cmd>:startinsert<cr>", {}) -- ii for insert mode
-- vim.api.nvim_set_keymap("n", "i", "<CR>", {}) -- enter in normal mode

vim.api.nvim_set_keymap("n", "<M-0>", "<esc><cmd>:w<CR><M-1>i<UP>", {}) -- run code with args
vim.api.nvim_set_keymap("n", "<M-4>", "<esc><cmd>:w<CR><cmd>:TermCurrentH<CR>", {}) 
vim.api.nvim_set_keymap("n", "<M-5>", "<esc><cmd>:w<CR><cmd>:TermCurrentV<CR>", {}) 
----------------- <F1> <F12>
-- vim.api.nvim_set_keymap("n", "<F5>", "<cmd>!python % <CR>", {}) -- run programs




lvim.lsp.buffer_mappings.normal_mode["K"] = nil    -- <leader>kk
vim.keymap.set({'n', 'x', 'o'}, 'zh', 'H') -- H default key for top of screen
vim.keymap.set({'n', 'x', 'o'}, 'zl', 'L') -- L default key for bottom of screen
vim.keymap.set({'n', 'x', 'o'}, 'zm', 'M') -- M default key for Middle of screen

vim.keymap.set({'n', 'x', 'o'}, 'zy', '<C-y>') -- scroll one line above
vim.keymap.set({'n', 'x', 'o'}, 'ze', '<C-e>') -- scroll one line bottom 

vim.keymap.set({'n', 'x', 'o'}, '<C-f>', '<C-d>') -- use <C-f> <C-u> for semi page navigation
-- vim.keymap.set({'n', 'x', 'o'}, 'zi', '<C-b>')  -- move a 1 page screen up 
-- vim.keymap.set({'n', 'x', 'o'}, 'zu', '<C-u>')  -- move a 0.5 page screen up 
-- vim.keymap.set({'n', 'x', 'o'}, 'zf', '<C-f>')  ---- move a 1 page screen down
-- vim.keymap.set({'n', 'x', 'o'}, 'zd', '<C-d>')  ---- move a 0.5 page screen down 
-- in my case: [zz + zt + zb ] + [ zh + zl + zm ] + [zy + ze] 

vim.keymap.set({'n', 'x', 'o'}, 'H', '4b')  -- 0w == ^
vim.keymap.set({'n', 'x', 'o'}, 'L', '4e') --$
vim.keymap.set({'n', 'x', 'o'}, 'K', '6k')    
vim.keymap.set({'n', 'x', 'o'}, 'J', '6j')
vim.keymap.set({'n'}, '<C-d>', 'diw') --delete whole word even you were in the middle
vim.keymap.set({'n'}, '<C-e>', '3e')
vim.keymap.set({'n'}, '<C-b>', '3b')
vim.keymap.set({'n'}, 'gG', 'gg^vG$')  -- select all lines [gg - G - gG]
vim.keymap.set({'n'}, 'j', 'gj') -- if long lines wraps
vim.keymap.set({'n'}, 'k', 'gk') -- if long lines wraps




--------------------------terminal mode-----------------------
vim.keymap.set({'t'}, 'jj', '<C-\\><C-N><C-w>') -- jj for normal mode
vim.keymap.set({'t'}, 'qq', '<C-a>exit') -- qq for exit [delete input then type exit]







-- vim.api.nvim_set_keymap("i", "<c-z>", "<cmd>lua require('lsp_signature').toggle_float_win()<CR>", {}) -- enter in normal mode

vim.keymap.set({'n'}, '<space><up>', '<cmd>sp<cr><C-w>k')
vim.keymap.set({'n'}, '<space><down>', '<cmd>sp<cr>')   -- <Ctrl>ws
vim.keymap.set({'n'}, '<space><right>', '<cmd>vs<cr>')  -- <Ctll>wv
vim.keymap.set({'n'}, '<space><left>', '<cmd>vs<cr><C-w>h')
-- <Ctll>ww <Ctll>wq <Ctll>wl <Ctll>wx <Ctll>wr <Ctll>w= <crlt>w_ <Ctll>wH <Ctll>wT  

vim.api.nvim_set_keymap("n", "<space>1", "<esc><cmd>:BufferLineGoToBuffer 1<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>2", "<esc><cmd>:BufferLineGoToBuffer 2<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>3", "<esc><cmd>:BufferLineGoToBuffer 3<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>4", "<esc><cmd>:BufferLineGoToBuffer 4<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>5", "<esc><cmd>:BufferLineGoToBuffer 5<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>6", "<esc><cmd>:BufferLineGoToBuffer 6<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>7", "<esc><cmd>:BufferLineGoToBuffer 7<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>8", "<esc><cmd>:BufferLineGoToBuffer 8<CR>", {}) 
vim.api.nvim_set_keymap("n", "<space>9", "<esc><cmd>:BufferLineGoToBuffer 9<CR>", {}) 

-- surround in visual mode
-- vim.api.nvim_set_keymap("v", "<space>s[", "di[<space><space>]<left><left><esc>p", {}) 
vim.api.nvim_set_keymap("v", "<space>s[", "di[]<left><esc>p", {}) 
vim.api.nvim_set_keymap("v", "<space>s{", "di{}<left><esc>p", {}) 
vim.api.nvim_set_keymap("v", "<space>s\"", "di\"\"<left><esc>p", {}) 
vim.api.nvim_set_keymap("v", "<space>s'", "di''<left><esc>p", {}) 
vim.api.nvim_set_keymap("v", "<space>s(", "di()<left><esc>p", {}) 
-- just one word: there is no conflict with registers
vim.api.nvim_set_keymap("n", "\"\"", "ysiw\"", {})
vim.api.nvim_set_keymap("n", "\"'", "ysiw'", {}) 
vim.api.nvim_set_keymap("n", "\"{", "ysiw{", {}) 
vim.api.nvim_set_keymap("n", "\"[", "ysiw[", {}) 
vim.api.nvim_set_keymap("n", "\"(", "ysiw(", {})

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


local actions = require('telescope.actions')
lvim.builtin.telescope.defaults.mappings = {
  n = {
    ["qq"] = actions.close,
    ["<leader>q"] = actions.close,
    ["<leader>v"] = actions.select_vertical,
  }
}
-- lvim.builtin.telescope.theme="ivy" --ivy or dropdown



-- lvim.builtin.cmp.mapping["<C-b>"] = cmp_mapping.close()
lvim.builtin.cmp.mapping["<C-e>"] = nil    -- this is for abbortion cmp popup, I write a code with <C-b> fot toggle
lvim.builtin.cmp.mapping["<Tab>"] = nil
lvim.builtin.cmp.mapping["<C-p>"] = nil
lvim.builtin.cmp.mapping["<Down>"] = nil  -- when cmp pop is open you can navigate with down
lvim.builtin.cmp.mapping["<Up>"] = nil    -- when cmp pop is open you can navigate with up
-- lvim.builtin.cmp.mapping["<C-k>"]  = nil  -- still works I dont know why
-- lvim.builtin.cmp.mapping["<C-j>"]  = nil  -- still works I dont know why
vim.api.nvim_set_keymap("i", "<c-o>", "<cmd>lua vim.lsp.buf.hover()<cr>", {}) 
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

-- gx for open link under the cursor
local function run_google_for_current_file()
  -- add chrome folder to your path
  local currnetPath=vim.api.nvim_buf_get_name(0)
  vim.api.nvim_feedkeys(":!chrome "..currnetPath.."\n","n", false)
end
vim.keymap.set({'n'}, '<space>rG', '', {  --rg for google current word
    desc = "run_google_for_current_file", -- you can install markdown viewr in chrome  
    callback = run_google_for_current_file
})








-- vim.keymap.set({'n'}, '<C-z>', '', { 
--     desc = "run_only_current_file", -- you can install markdown viewr in chrome  
--     callback = run_only_current_file
-- })


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
  vim.api.nvim_feedkeys(":!chrome "..currnetPath.."\n","n", false) -- add chrome.exe to your path
  local Efile= "C:\\Users\\mohammadi\\AppData\\Local\\lvim\\doc\\e_under_cursor.md"
  local fileHandle = io.open(Efile, "a") -- append mode
  fileHandle:write("\n" .. wordUnderCursor)
  fileHandle:close()
end
vim.api.nvim_create_user_command("Dict", serach_dictionary, { desc = "Search word in dictionary" ,nargs = "*" })






wk.register({
  b={
    name = "Buffers",  -- <C-o> for reopen closed buffer
    a = { "<cmd>tab ba<cr>", "as tabs" },                  -- better view for telescope buffers [short name]
    g = { "<cmd>BuffergatorToggle<cr>", "buffer gator" },  -- list of buffers as a navbar
    p = { "<cmd>BufferLineTogglePin<cr>", "Pin"},  -- pin buffer
    -- w = { "<cmd>BufferWipeout<cr>", "Wipeout" }, -- TODO: implement this for bufferline
    h = { "<cmd>BufferLineMovePrev<cr>", "move to prev" },
    l = { "<cmd>BufferLineMoveNext<cr>", "move to next" },
    H = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
    L = {
      "<cmd>BufferLineCloseRight<cr>",
      "Close all to the right",
    },
    S = {
      "<cmd>BufferLineSortByExtension<cr>",
      "Sort by language",
    },
  },
  p={
    -- there is lots of mapping with p in lunarvimg config
    name = "plugins",
    a = { "<cmd>Telescope<cr>", "Telescope" },  -- command pallet == pa
  },
  -- k means up so you should wait for popup after pressing <leader>
  k={
    name="vscode",
    -- <leader>sk  list of shortkeys
    K =  { "<cmd>lua vim.lsp.buf.hover()<cr>", "Show hover" }, --defualt [K] you can use this twice
    l = {"<cmd>lua require('lsp_signature').toggle_float_win()<CR>","lsp signature"},
    v = { "<cmd>:MarkdownPreviewToggle<CR>", "markdown viewer live" },
    g = { "<cmd>:Glow<CR>", "markdown viewer inside vim" },
    c = { "<cmd>:PickColor<CR>", "Color picker" },
    p = { "<cmd>:PickColorInsert<CR>", "Color picker insert" },
  },
  j={
    name="jump",
    -- va{ and va{V very powerful selection ==> visual mode: aB , aBV
    -- easy motion flash.nvim: f+F [jump next] t+T [jump before] ;+, [repeat] another jumps are { % } 
    p={"%", "%"},
    j={function() require('flash').jump() end, "flash jump"},
    k={function() require('flash').treesitter() end, "flash treesitter"},
    t={function() require('flash').treesitter_search() end, "flash treesitter search"},
    -- nvim-surround: ys{motion}{char}, ds{char}, cs{target}{replacement}
    -- Old text                    Command         New text
    -- -------------ssss----------) } ] > " ==alias==> b B r a q------------------------
    --     surr*ound_words             ysiw) or ysiw(          (surround_words with space and nospace)
    --     *make strings               ys$"            "make strings"
    --     [delete ar*ound me!]        ds]             delete around me!
    --     remove <b>HTML t*ags</b>    dst             remove HTML tags
    --     'change quot*es'            cs'"            "change quotes"
    --     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    --     delete(functi*on calls)     dsf             function calls
    --------------------------f:function t:tag T:tag with attr

    -- insert = "<C-g>s",
    -- insert_line = "<C-g>S",
    -- normal = "ys",
    -- normal_cur = "yss",
    -- normal_line = "yS",
    -- normal_cur_line = "ySS",
    -- visual = "S",
    -- visual_line = "gS",
    -- delete = "ds",
    -- change = "cs",
    -- change_line = "cS",
    --------------------------------
    -- text objs: iw aw ip ap
    -- yssf ==> function
    -- ysas
    -- ySiw{ 
    -- ySS
    -- visual, line visual, block visual ==> S or gS [set virtauledit=block => for select empty lines]
    -- <C-g>s in inset mode
  },
  m={
    name="me",
  },
  r={
    name="run",
    r = { "<cmd>:w<CR><cmd>:RunCode<CR>i", "run in bottom" }, -- i for inset mode for input user
    f = { "<cmd>:RunFile<CR>", "run file" },
    e = { "<cmd>:DunB<CR>", "run just current file with normal mode" },
    t = { "<cmd>:DunB<CR><esc><cmd>:startinsert", "run just current file insertmode" },
    T = { "<cmd>:RunFile tab<CR>", "run in new tab" }, --rt for args
    p = { "<cmd>:RunProject<CR>", "run project" },
    c = { "<cmd>:RunClose<CR>", "run close" },
    crf = { "<cmd>:CRFiletype<CR>", "run CRFile" },
    crp = { "<cmd>:CRProjects<CR>", "run CRProjects" },
    -- g={
    --    name="end directory",
    --    j={},
    --    k={},
    --    l={}
    -- }
    --dictionary
    l = { "<cmd>:Dict longman<CR>", "run longman" },
    o = { "<cmd>:Dict oxford<CR>", "run oxford" },
    k = { "<cmd>:Dict cambridge<CR>", "run cambridge" },
    g = { "<cmd>:Dict google<CR>", "run google" }, --rG for google current file
    --g poen google for current file like html 
  }
},{prefix = "<leader>"})


-- lvim.builtin.which_key.mappings["f"] = {
--   name="find",
--   f={
--    function()
--      require("lvim.core.telescope.custom-finders").find_project_files { previewer = false }
--    end,
--    "Find File",
--  },
--   g={
--    { "<cmd>Telescope live_grep theme=ivy<cr>", "Live Grep" },
--   }
-- }

-- lvim.builtin.which_key.mappings["e"] = {
--   name="find",
--   e={
--      { "<cmd>NvimTreeToggle<CR>", "Explorer" },
--   }
-- }

lvim.builtin.which_key.mappings["h"] = {
  name="find",
  h={
    { "<cmd>set hls!<CR>", "Toggle Highlight" },
  }
}

lvim.builtin.which_key.mappings[";"] = {
  name="find",
  [";"]={
    { "<cmd>Alpha<CR>", "Dashboard" },
  }
}
lvim.builtin.which_key.mappings["s"] = {
  name = "Search",
  s = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Seacrh currnet file" },
  S = { "<cmd>Telescope luasnip theme=ivy<cr>", "snippet list"},
  a = { "<cmd>Telescope live_grep theme=ivy<cr>", "Live Grep inside all project"},
  f = { "<cmd>Telescope find_files<cr>", "Find File" },
  --------spector-----------
  p = { '<cmd>lua require("spectre").toggle()<CR>', "Toggle Spectre"},
  w = { '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', "Spectre curent word"},
  W = {'<esc><cmd>lua require("spectre").open_visual()<CR>', "Search Visual word"},
  F = {'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', "spectre on current File"},
  --------------------------
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  -- c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  -- t = { "<cmd>Telescope live_grep<cr>", "Text" },
  u = { "<cmd>Telescope undo theme=ivy<cr>", "undo history"},
  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
  l = { "<cmd>Telescope resume<cr>", "Resume last search" },
  P = {
    "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
    "Colorscheme with Preview",
  },
}

              

-- wk.register({
--   s={
--     -- there is lots of mapping with s in lunarvimg config
--     name = "Search",
--     a = { "<cmd>Telescope<cr>", "Telescope" },
--   },
-- },{prefix = "<C>"})
