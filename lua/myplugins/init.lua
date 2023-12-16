


require("telescope").load_extension "file_browser"
require'telescope'.load_extension('project')


-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>b",
--   ":Telescope file_browser<CR>",
--   { noremap = true }
-- )

-- -- open file_browser with the path of the current buffer
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>b",
--   ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
--   { noremap = true }
-- )

-- see markdown inside neovim
require('glow').setup({
  style = "dark",
  width = 120,    
})


require("scrollbar").setup()





require('code_runner').setup({
  filetype = {
    java = {
      "cd $dir &&",
      "javac $fileName &&",
      "java $fileNameWithoutExt"
    },
    python = "python -u",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt"
    },
  },
})  






