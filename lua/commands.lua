

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
  
