local function lsp_keymaps()
    vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {buffer=0})
    vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {buffer=0})
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['pyright'].setup {
    capabilities = capabilities;
    on_attach = function()
        lsp_keymaps()
    end,
}

local pid = vim.fn.getpid()
local omnisharp_bin = "/home/dan/omnisharp-linux-x64-net6.0/OmniSharp"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
    capabilities = capabilities;
    on_attach = function()
        lsp_keymaps()
    end,
}

require('lspconfig')['gopls'].setup {
    capabilities = capabilities;
    on_attach = function()
        lsp_keymaps()
    end,
}

require('lspconfig')['sumneko_lua'].setup {
    capabilities = capabilities;
    on_attach = function()
        lsp_keymaps()
    end,
}
