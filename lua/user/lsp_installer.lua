local lsp_installer = require("nvim-lsp-installer")
local km = vim.keymap.set

local servers = {
    "sumneko_lua",
}

local function lsp_keymaps()
    km("n", "<leader>k", vim.lsp.buf.hover, {buffer=0})
    km("n", "<leader>gd", vim.lsp.buf.definition, {buffer=0})
    km("n", "<leader>gi", vim.lsp.buf.implementation, {buffer=0})
    km("n", "<leader>a", vim.lsp.buf.code_action, {buffer=0})
    km("n", "<F2>", vim.lsp.buf.rename, {buffer=0})
    km("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
    km("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
    require('goto-preview').setup {}
    km("n", "<leader>gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")
    km("n", "<leader>gP", "<cmd>lua require('goto-preview').close_all_win()<CR>")
    km("n", "<leader>gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>")
end

for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found and not server:is_installed() then
        print("Installing " .. name)
        server:install()
    end
end

local enhance_server_opts = {
    ["sumneko_lua"] = function(opts)
        opts.settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' }
                }
            }
        }
    end,
}

lsp_installer.on_server_ready(function(server)

    local opts = {
        on_attach = function ()
            lsp_keymaps()
        end,
    }
    if enhance_server_opts[server.name] then
        enhance_server_opts[server.name](opts)
    end

    server:setup(opts)
end)
