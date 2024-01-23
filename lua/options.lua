
-- Enable powershell as your default shell
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]

-- Set a compatible clipboard manager
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
}


lvim.builtin.bufferline.options.numbers = "ordinal"
vim.opt.guifont = "Fira Nerd Font Mono"
-- vim.opt.guifont = "Baloo Bhaijaan 2"
vim.opt.relativenumber = true 
vim.opt.wrap = true  -- break long lines: use gj + gk
vim.opt.linebreak = true  --make it not wrap in the middle of a "word"

-- vim.g.minimap_auto_start = true

-- highlight Green guifg=Green
-- syntax match Green /<a\>[^>]*>/

