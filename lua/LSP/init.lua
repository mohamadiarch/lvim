

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
