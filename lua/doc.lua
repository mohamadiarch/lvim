-- User Commands should be Uppercase
-- windows path
local username = "\\moham" -- change for serach_dictionary function
local cheatpath = "H:\\offline_prog\\cheat"
local offline_prog = "H:\\offline_prog"
local pluginpath = "C:\\Users" .. username .. "\\AppData\\Roaming\\lunarvim\\site\\pack\\lazy\\opt"

-----------------------------reading docs-------------------------
-- f1
-- :help
-- :help user-manual
-- : h topic
-- : h pluginname
-- :only :setl bufflisted
-- ' is used for options (:help 'incsearch')
-- No prefix for normal mode commands (:help CTRL-])
-- i_ or v_ for insert mode and visual mode (:help i_CTRL-[)

--------------------------------------------------------------------

local PluginDocs = "command! PluginDocs e " .. pluginpath .. "\\alpha-nvim\\Readme.md"
vim.api.nvim_exec(PluginDocs, true)

local Zim = "command! Zin e C:\\Users\\moham\\AppData\\Local\\lvim\\config.lua"
vim.api.nvim_exec(Zim, true)

vim.cmd ([[
    command! Zim e H:\cheat\awesome-cheatsheets\README.md
]])

-- config files---------------------Rc--------------------------------------------------------------
-- : lvimreload
-- vim.cmd([[
--   command! Vimrc e C:\Users\mohammadi\AppData\Local\lvim\config.lua
--   command! RcLvim e C:\Users\mohammadi\AppData\Local\lvim\config.lua
--   command! RcLunar e C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\init.lua
--   command! RcWhichKey e C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\lua\lvim\core\which-key.lua
-- ]])
local Vimrc = "command! Vimrc e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\lua\\keymaps.lua"
vim.api.nvim_exec(Vimrc, true) -- for change the config

local RcLunar = "command! VimrcLunar e C:\\Users" .. username .. "\\AppData\\Roaming\\lunarvim\\lvim\\init.lua"
vim.api.nvim_exec(RcLunar, true)

local RcLvim = "command! RcLvim e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\config.lua"
vim.api.nvim_exec(RcLvim, true) -- for comment all conifg

local RcLunar = "command! RcLunar e C:\\Users" .. username .. "\\AppData\\Roaming\\lunarvim\\lvim\\init.lua"
vim.api.nvim_exec(RcLunar, true)

local RcWhichKeyCore = "command! RcWhichKeyCore e C:\\Users" ..
username .. "\\AppData\\Roaming\\lunarvim\\lvim\\lua\\lvim\\core\\which-key.lua"
vim.api.nvim_exec(RcWhichKeyCore, true)

local RcWhichKey = "command! RcWhichKey e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\lua\\keymaps.lua"
vim.api.nvim_exec(RcWhichKey, true)





-- -- lvim docs--------------doc-------------------------------------------------------------------------
-- vim.cmd([[
--   command! DocLvim e C:\Users\mohammadi\AppData\Local\lvim\doc\lvim.md
--   command! DocInstall e C:\Users\mohammadi\AppData\Local\lvim\doc\install.md
--   command! DocTutorVim e C:\Users\mohammadi\AppData\Local\lvim\doc\vim.tutor.md
--   command! DocLua e C:\Users\mohammadi\AppData\Local\lvim\doc\lua.md
-- ]])

local DocLvim = "command! Docvim e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\vim.md"
vim.api.nvim_exec(DocLvim, true)

local DocInstall = "command! DocInstall e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\install.md"
vim.api.nvim_exec(DocInstall, true)

local DocTutorVim = "command! DocTutorVim e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\vim.tutor.md"
vim.api.nvim_exec(DocTutorVim, true)

local DocLua = "command! DocLua e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\lua.md"
vim.api.nvim_exec(DocLua, true)




-- --personal notes-------------note-----------------------------------------------------------------------
-- vim.cmd([[
--   command! EE e C:\Users\mohammadi\AppData\Local\lvim\doc\e.md
--   command! Train e C:\Users\mohammadi\AppData\Local\lvim\doc\train.md
--   command! NoteME e C:\Users\mohammadi\AppData\Local\lvim\doc\note.md
--   command! NoteMyMind e C:\Users\mohammadi\AppData\Local\lvim\doc\mymind.md
-- ]])

local EE = "command! EE e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\e.md"
vim.api.nvim_exec(EE, true)

local Anki = "command! Anki e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\anki.md"
vim.api.nvim_exec(Anki, true) -- anki just for vim. diff with DocAnki

local Todoist = "command! Todo e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\todo.md"
vim.api.nvim_exec(Todoist, true)

local Train = "command! Train e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\train.md"
vim.api.nvim_exec(Train, true)

local NoteME = "command! NoteME e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\note.md"
vim.api.nvim_exec(NoteME, true)

local NoteMyMind = "command! NoteMyMind e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\doc\\mymind.md"
vim.api.nvim_exec(NoteMyMind, true)

local NoteXournal = "command! NoteXournal e " .. offline_prog .. "\\list\\raodmap\\myroadmap\\xournals\\xournal.md"
vim.api.nvim_exec(NoteXournal, true)



-- -- dev-notes-----------------note-----------------------------------------------------------------------
-- vim.cmd([[
--   command! NoteDevNotes e C:\Users\mohammadi\AppData\Local\repos\dev-notes\Readme.md
--   command! NotePython e C:\Users\mohammadi\AppData\Local\repos\dev-notes\python\python.md
--   command! Notejs e C:\Users\mohammadi\AppData\Local\repos\dev-notes\js\js.md
-- ]])

local NoteDevNotes = "command! NoteDevNotes e " .. cheatpath .. "\\dev-notes\\Readme.md"
vim.api.nvim_exec(NoteDevNotes, true)

local NotePython = "command! NotePython e " .. cheatpath .. "\\dev-notes\\python.md"
vim.api.nvim_exec(NotePython, true)

local Notejs = "command! Notejs e " .. cheatpath .. "\\dev-notes\\js.md"
vim.api.nvim_exec(Notejs, true)


-- --docs--------------------doc---------------------------------------------------------------------------
-- -- change path of e_under_cursor.md in keymaps.lua
-- vim.cmd([[
--   command! DocScripts e C:\Users\mohammadi\AppData\Local\repos\scrtip\Readme.md
--   command! DocCheatSheats e C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\Readme.md
--   command! DocCheatSheatsZip e C:\Users\mohammadi\AppData\Local\repos\cheatsheets.zip\Readme.md
--   command! DocAnki e C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\Anki.md
--   command! DocGit e C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\tools\git.sh
--   command! DocLinux e C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\tools\linux.md
-- ]])

local DocScripts = "command! DocScripts e " .. cheatpath .. "\\myScripts\\Readme.md"
vim.api.nvim_exec(DocScripts, true)

local DocCheatSheats = "command! DocCheatSheats e " .. cheatpath .. "\\awesome-cheatsheets\\Readme.md"
vim.api.nvim_exec(DocCheatSheats, true)

local DocCheatSheatsZip = "command! DocCheatSheatsZip e " .. cheatpath .. "\\cheatsheets.zip\\Readme.md"
vim.api.nvim_exec(DocCheatSheatsZip, true)

local DocAnki = "command! DocAnki e " .. cheatpath .. "\\awesome-cheatsheets\\Anki.md"
vim.api.nvim_exec(DocAnki, true) -- anki for cheatsheets like linux. diff with anki

local DocGit = "command! DocGit e " .. cheatpath .. "\\awesome-cheatsheets\\tools\\git.sh"
vim.api.nvim_exec(DocGit, true)

local DocLinux = "command! DocLinux e " .. cheatpath .. "\\awesome-cheatsheets\\tools\\linux.md"
vim.api.nvim_exec(DocLinux, true)






-- --snippet files-------------Snippet-----------------------------------------------------------------------

local SnippetVim = "command! SnippetVim e " .. pluginpath .. "\\vim-snippets\\snippets\\python.snippets"
vim.api.nvim_exec(SnippetVim, true)

local SnippetFriendly = "command! SnippetFriendly e " .. pluginpath .. "\\friendly-snippets\\snippets\\python\\base.json"
vim.api.nvim_exec(SnippetFriendly, true)

local SnippetsPersonal = "command! SnippetPersonal e C:\\Users" .. username .. "\\AppData\\Local\\lvim\\snippets\\python.json"
vim.api.nvim_exec(SnippetsPersonal, true)


-- --plugin files-------------Plg-----------------------------------------------------------------------
