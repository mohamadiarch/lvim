


function open_explorer()
    local full_path = vim.fn.expand("%:p:h")
    local os_info = vim.loop.os_uname()
    local os_name = os_info.sysname
    if os_name == "Windows_NT" then
      vim.fn.system("start " .. full_path)
        -- print("heee")
        print("Full path:", full_path)
    --   full_path = full_path:gsub("/", "\\")
    elseif os_name == "linux" then
        print("elseif")
        vim.fn.system("open " .. full_path)
    else
        print("else")
    end 
end
vim.api.nvim_create_user_command("Open", open_explorer, { desc = "open . or start. for opening file explorer linux/windows" ,nargs = "*" })


--Codiuem Disable and Enable
vim.cmd([[
  command! CmpDisable lua require('cmp').setup.buffer { enabled = false }
  command! CmpEnable lua require('cmp').setup.buffer { enabled = true }
]])
-- terminal
vim.cmd([[command! TermToggleH lua require('toggleterm.terminal').Terminal:new({ direction = 'horizontal'}):toggle()]])
vim.cmd([[command! TermToggleV lua require('toggleterm.terminal').Terminal:new({ direction = 'vertical'}):toggle()]])
--

vim.cmd([[command! TermCurrentH let s:term_dir=expand('%:p:h') | below new | call termopen([&shell], {'cwd': s:term_dir })|: startinsert ]])
vim.cmd([[command! TermCurrentV let s:term_dir=expand('%:p:h') | vertical new | call termopen([&shell], {'cwd': s:term_dir })|: startinsert]])
vim.cmd([[command! TermCurrentTab let s:term_dir=expand('%:p:h') | tab new |call termopen([&shell], {'cwd': s:term_dir })|: startinsert]])
-- directory run
function run_only_current_file(direction)
  local name=vim.fn.expand('%:t')
  local compiler="python" --defult
  local format=vim.fn.expand('%:e'):match('[^.]+$')
  if  format== 'py' then
    compiler="python"
  end
  if  format== 'js' then
    compiler="node"
  end
    vim.api.nvim_feedkeys(":" ..direction.. " split term://cd %:p:h &&" ..compiler.. " %:t\n","n", false)
end
-- vim.cmd([[command! DunV below split term://cd %:p:h && python %:t ]])
vim.cmd([[command! DunBi lua run_only_current_file("below")i]])
vim.cmd([[command! DunB lua run_only_current_file("below") ]])
vim.cmd([[command! DunV lua run_only_current_file("vertical") ]])
vim.cmd([[command! DunT lua run_only_current_file("tab") ]])
-- send this for nvim 
-- vim.api.nvim_set_keymap("n", "<F6>", ":let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>", {})
  


-- --------------------------------- telescope---------------------------------
-- vim.cmd([[command! ThemeTelDrop Telescope find_files theme=dropdown]])
-- vim.cmd([[command! ThemeTelIvy Telescope find_files theme=ivy]])




--------------------------------web--------------------------------
vim.cmd([[
  command! PomodroWeb !chrome https://www.toptal.com/project-managers/tomato-timer
]])
--websites------------------web
-- add chrome.exe to your path
vim.cmd([[
  command! WebGithub !chrome https://github.com/mohamadiarch?tab=repositories
  command! WebShortcutWord !chrome https://shortcutworld.com/
  command! WebGrep !chrome https://grep.app/
  command! WebSearchCode !chrome https://searchcode.com/
  command! WebAlgorithm !chrome https://the-algorithms.com/
  command! WebAwsome !chrome https://github.com/sindresorhus/awesome?tab=readme-ov-file
]])

-- onlin code ---------------webcode
vim.cmd([[
  command! WebCodeProgramiz https://www.programiz.com/c-programming/online-compiler/
  command! WebCodePen https://codepen.io/pen/
  command! WebCodeStackblitz https://stackblitz.com/
]])

--websites for vim----------Veb
--: h quickref
vim.cmd([[
  command! VebNeovimQRef !chrome https://neovim.io/doc/user/quickref.html
]])

----websites for frontend-------Front
vim.cmd([[
  command! FrontUndesign !chrome https://undesign.learn.uno/
]])


-- music websites------------music
vim.cmd([[
  command! MusicForPrograming !chrome https://musicforprogramming.net
  command! MusicMyNoise !chrome https://mynoise.net/
  command! MusicWhiteNoise !chrome https://www.relaxingwhitenoise.com/
  command! MusicNoisli !chrome https://www.noisli.com/
  command! MusicGenerative !chrome https://play.generative.fm/
  command! MusicFreeCodeCamp !chrome https://coderadio.freecodecamp.org/
]])

-- imp files

-- imp apps
  
