

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



--------------------------------web--------------------------------
--websites
-- add chrome.exe to your path
vim.cmd([[
  command! WebGithub !chrome https://github.com/mohamadiarch?tab=repositories
  command! WebShortcutWord !chrome https://shortcutworld.com/
  command! WebGrep !chrome https://grep.app/
  command! WebSearchCode !chrome https://searchcode.com/
  command! WebAlgorithm !chrome https://the-algorithms.com/
  command! WebAwsome !chrome https://github.com/sindresorhus/awesome?tab=readme-ov-file

]])
-- music websites
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
  
