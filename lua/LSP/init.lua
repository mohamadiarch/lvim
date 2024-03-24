

local lspconfig = require("lspconfig")

lspconfig.emmet_ls.setup({
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
  end,
  filetypes = {
    "html",
    "css",
    "javascript",
    "typescript",
    "jsx",
    "tsx",
  },
})

-- require('telescope').load_extension('luasnip')
-- lvim.builtin.telescope.load_extension('luasnip')

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "luasnip")
  -- any other extensions loading
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
-- https://github.com/LunarVim/starter.lvim --branches
local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters" 
----------------------------------python-----------------------------------------
-- add `pyright` to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- remove `jedi_language_server` from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "jedi_language_server"
end, lvim.lsp.automatic_configuration.skipped_servers)

--install with :Mason first
formatters.setup { { name = "black" } }
linters.setup { { command = "flake8",
                     filetypes = { "python" },
                     args = { "--max-line-length", "130" },
} }  -- https://flake8.pycqa.org/en/latest/user/options.html

-------------------------------yaml--------------------------------------------
-- add `pyright` to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "yaml-language-server" })
-- remove `jedi_language_server` from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "spectral-language-server"
end, lvim.lsp.automatic_configuration.skipped_servers)
