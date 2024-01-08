
-- User Commands should be Uppercase
-- windows path


vim.cmd([[
  command! SourceRc source C:\Users\mohammadi\AppData\Local\lvim\config.lua
  command! Vimrc tabe C:\Users\mohammadi\AppData\Local\lvim\config.lua
  command! VimrcLunar tabe C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\init.lua
  command! VimrcWhichKey tabe C:\Users\mohammadi\AppData\Roaming\lunarvim\lvim\lua\lvim\core\whick-key.lua
]])
-- change path of e_under_cursor.md in keymaps.lua
vim.cmd([[
  command! DocAll tabe C:\Users\mohammadi\AppData\Local\awesome-cheatsheets\Readme.md
  command! DocGit tabe C:\Users\mohammadi\AppData\Local\awesome-cheatsheets\tools\git.sh
  command! DocLinux tabe C:\Users\mohammadi\AppData\Local\awesome-cheatsheets\tools\linux.md
  command! DocCmd tabe C:\Users\mohammadi\AppData\Local\awesome-cheatsheets\tools\cmd.md
  command! DocScripts tabe C:\Users\mohammadi\AppData\Local\scrtip\Readme.md
  
  command! EE tabe C:\Users\mohammadi\AppData\Local\lvim\doc\e.md
  command! DocNote tabe C:\Users\mohammadi\AppData\Local\lvim\doc\note.md

  command! DocLvim tabe C:\Users\mohammadi\AppData\Local\lvim\doc\lvim.md
  command! DocInstall tabe C:\Users\mohammadi\AppData\Local\lvim\doc\install.md
  command! DocTutorVim tabe C:\Users\mohammadi\AppData\Local\lvim\doc\vim.tutor.md
  command! DocLua tabe C:\Users\mohammadi\AppData\Local\lvim\doc\lua.md

  command! NoteAll tabe C:\Users\mohammadi\AppData\Local\dev-notes\Readme.md
  command! NotePython tabe C:\Users\mohammadi\AppData\Local\dev-notes\python\python.md
  command! Notejs tabe C:\Users\mohammadi\AppData\Local\dev-notes\python\js.md
  
]])




-- linux path


