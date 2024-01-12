
-- User Commands should be Uppercase
-- windows path

-- config files
-- : lvimreload
vim.cmd([[
  command! Vimrc tabe C:\Users\mohammadi\AppData\Local\lvim\config.lua
  command! VimrcLunar tabe C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\init.lua
  command! VimrcWhichKey tabe C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\lua\lvim\core\whick-key.lua
]])
-- lvim docs
vim.cmd([[
  command! DocLvim tabe C:\Users\mohammadi\AppData\Local\lvim\doc\lvim.md
  command! DocInstall tabe C:\Users\mohammadi\AppData\Local\lvim\doc\install.md
  command! DocTutorVim tabe C:\Users\mohammadi\AppData\Local\lvim\doc\vim.tutor.md
  command! DocLua tabe C:\Users\mohammadi\AppData\Local\lvim\doc\lua.md
]])

--personal notes
vim.cmd([[
  command! EE tabe C:\Users\mohammadi\AppData\Local\lvim\doc\e.md
  command! DocNote tabe C:\Users\mohammadi\AppData\Local\lvim\doc\note.md
  command! DocMyMind tabe C:\Users\mohammadi\AppData\Local\lvim\doc\mymind.md
]])
-- dev-notes
vim.cmd([[
  command! NoteDevNotes tabe C:\Users\mohammadi\AppData\Local\repos\dev-notes\Readme.md
  command! NotePython tabe C:\Users\mohammadi\AppData\Local\repos\dev-notes\python\python.md
  command! Notejs tabe C:\Users\mohammadi\AppData\Local\repos\dev-notes\js\js.md
]])

--docs
-- change path of e_under_cursor.md in keymaps.lua
vim.cmd([[
  command! DocScripts tabe C:\Users\mohammadi\AppData\Local\repos\scrtip\Readme.md  
  command! DocCheatSheats tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\Readme.md
  command! DocCheatSheatsZip tabe C:\Users\mohammadi\AppData\Local\repos\cheatsheets.zip\Readme.md
  command! DocAnki tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\Anki.md
  command! DocGit tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\tools\git.sh
  command! DocLinux tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\tools\linux.md
  command! DocCmd tabe C:\Users\mohammadi\AppData\Local\repos\awesome-cheatsheets\tools\cmd.md
]])






-- linux path


