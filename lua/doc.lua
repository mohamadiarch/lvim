
-- User Commands should be Uppercase
-- windows path
local username = "\\moham"
local cheatpath = "H:\\offline_prog\\cheat"
local offline_prog = "H:\\offline_prog"
local pluginpath = "C:\\Users" .. username .."\\AppData\\Roaming\\lunarvim\\site\\pack\\lazy\\opt"




-- config files---------------------Rc--------------------------------------------------------------
-- : lvimreload
-- vim.cmd([[
--   command! Vimrc tabe C:\Users\mohammadi\AppData\Local\lvim\config.lua
--   command! RcLvim tabe C:\Users\mohammadi\AppData\Local\lvim\config.lua
--   command! RcLunar tabe C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\init.lua
--   command! RcWhichKey tabe C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\lua\lvim\core\which-key.lua
-- ]])
local Vimrc="command! Vimrc tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\config.lua"
vim.api.nvim_exec(Vimrc, true)

local RcLvim="command! RcLvim tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\config.lua"
vim.api.nvim_exec(RcLvim, true)

local RcLunar="command! RcLunar tabe C:\\Users" ..username .."\\AppData\\Roaming\\lunarvim\\lvim\\init.lua"
vim.api.nvim_exec(RcLunar, true)

local RcWhichKeyCore="command! RcWhichKeyCore tabe C:\\Users" ..username .."\\AppData\\Roaming\\lunarvim\\lvim\\lua\\lvim\\core\\which-key.lua"
vim.api.nvim_exec(RcWhichKeyCore, true)

local RcWhichKey="command! RcWhichKey tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\lua\\keymaps.lua"
vim.api.nvim_exec(RcWhichKey, true)



-- -- lvim docs--------------doc-------------------------------------------------------------------------
-- vim.cmd([[
--   command! DocLvim tabe C:\Users\mohammadi\AppData\Local\lvim\doc\lvim.md
--   command! DocInstall tabe C:\Users\mohammadi\AppData\Local\lvim\doc\install.md
--   command! DocTutorVim tabe C:\Users\mohammadi\AppData\Local\lvim\doc\vim.tutor.md
--   command! DocLua tabe C:\Users\mohammadi\AppData\Local\lvim\doc\lua.md
-- ]])

local DocLvim="command! DocLvim tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\lvim.md"
vim.api.nvim_exec(DocLvim, true)

local DocInstall="command! DocInstall tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\install.md"
vim.api.nvim_exec(DocInstall, true)

local DocTutorVim="command! DocTutorVim tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\vim.tutor.md"
vim.api.nvim_exec(DocTutorVim, true)

local DocLua="command! DocLua tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\lua.md"
vim.api.nvim_exec(DocLua, true)




-- --personal notes-------------note-----------------------------------------------------------------------
-- vim.cmd([[
--   command! EE tabe C:\Users\mohammadi\AppData\Local\lvim\doc\e.md
--   command! Train tabe C:\Users\mohammadi\AppData\Local\lvim\doc\train.md
--   command! NoteME tabe C:\Users\mohammadi\AppData\Local\lvim\doc\note.md
--   command! NoteMyMind tabe C:\Users\mohammadi\AppData\Local\lvim\doc\mymind.md
-- ]])

local EE="command! EE tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\e.md"
vim.api.nvim_exec(EE, true)

local Train="command! Train tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\train.md"
vim.api.nvim_exec(Train, true)

local NoteME="command! NoteME tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\note.md"
vim.api.nvim_exec(NoteME, true)

local NoteMyMind="command! NoteMyMind tabe C:\\Users" ..username .."\\AppData\\Local\\lvim\\doc\\mymind.md"
vim.api.nvim_exec(NoteMyMind, true)

local NoteXournal="command! NoteXournal tabe " .. offline_prog .. "\\list\\raodmap\\myroadmap\\xournals\\xournal.md"
vim.api.nvim_exec(NoteXournal, true)



-- -- dev-notes-----------------note-----------------------------------------------------------------------
-- vim.cmd([[
--   command! NoteDevNotes tabe C:\Users\mohammadi\AppData\Local\repos\dev-notes\Readme.md
--   command! NotePython tabe C:\Users\mohammadi\AppData\Local\repos\dev-notes\python\python.md
--   command! Notejs tabe C:\Users\mohammadi\AppData\Local\repos\dev-notes\js\js.md
-- ]])

local NoteDevNotes="command! NoteDevNotes tabe " .. cheatpath .. "\\dev-notes\\Readme.md"
vim.api.nvim_exec(NoteDevNotes, true)

local NotePython="command! NotePython tabe " .. cheatpath .. "\\dev-notes\\python.md"
vim.api.nvim_exec(NotePython, true)

local Notejs="command! Notejs tabe " .. cheatpath .. "\\dev-notes\\js.md"
vim.api.nvim_exec(Notejs, true)


-- --docs--------------------doc---------------------------------------------------------------------------
-- -- change path of e_under_cursor.md in keymaps.lua
-- vim.cmd([[
--   command! DocScripts tabe C:\Users\mohammadi\AppData\Local\repos\scrtip\Readme.md  
--   command! DocCheatSheats tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\Readme.md
--   command! DocCheatSheatsZip tabe C:\Users\mohammadi\AppData\Local\repos\cheatsheets.zip\Readme.md
--   command! DocAnki tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\Anki.md
--   command! DocGit tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\tools\git.sh
--   command! DocLinux tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\tools\linux.md
-- ]])

local DocScripts="command! DocScripts tabe " .. cheatpath .. "\\myScripts\\Readme.md"
vim.api.nvim_exec(DocScripts, true)

local DocCheatSheats="command! DocCheatSheats tabe " .. cheatpath .. "\\awesome-cheatsheets\\Readme.md"
vim.api.nvim_exec(DocCheatSheats, true)

local DocCheatSheatsZip="command! DocCheatSheatsZip tabe " .. cheatpath .. "\\cheatsheets.zip\\Readme.md"
vim.api.nvim_exec(DocCheatSheatsZip, true)

local DocAnki="command! DocAnki tabe " .. cheatpath .. "\\awesome-cheatsheets\\Anki.md"
vim.api.nvim_exec(DocAnki, true)

local DocGit="command! DocGit tabe " .. cheatpath .. "\\awesome-cheatsheets\\tools\\git.sh"
vim.api.nvim_exec(DocGit, true)

local DocLinux="command! DocLinux tabe " .. cheatpath .. "\\awesome-cheatsheets\\tools\\linux.md"
vim.api.nvim_exec(DocLinux, true)






-- --plugin files-------------Plg-----------------------------------------------------------------------

local PlgSnippet="command! PlgSnippet tabe " .. pluginpath .. "\\vim-snippets\\snippets\\python.snippets"
vim.api.nvim_exec(PlgSnippet, true)