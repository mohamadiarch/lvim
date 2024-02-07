

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

require('telescope').load_extension('luasnip')

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
-- https://github.com/LunarVim/starter.lvim --branches
local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters" 
----------------------------------python-----------------------------------------
--install with :Mason first
formatters.setup { { name = "black" } }
linters.setup { { command = "flake8",
                     filetypes = { "python" },
                     args = { "--max-line-length", "130" },
} }  -- https://flake8.pycqa.org/en/latest/user/options.html