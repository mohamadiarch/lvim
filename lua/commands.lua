


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





