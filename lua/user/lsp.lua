local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['pyright'].setup {
    capabilities = capabilities
}
require('lspconfig')['gopls'].setup {
    capabilities = capabilities
}

local pid = vim.fn.getpid()
local omnisharp_bin = "/home/dan/Downloads/omnisharp-linux-x64-net6.0/OmniSharp"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}

require('lspconfig')['kotlin_language_server'].setup {
    capabilities = capabilities
}

require'lspconfig'.sqlls.setup{}
