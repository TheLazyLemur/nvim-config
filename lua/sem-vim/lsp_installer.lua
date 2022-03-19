local lsp_installer = require("nvim-lsp-installer")
local km = vim.keymap.set

local servers = {
    "sumneko_lua",
}

require('goto-preview').setup {
    width = 120; -- Width of the floating window
    height = 15; -- Height of the floating window
    border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"}; -- Border characters of the floating window
    default_mappings = false; -- Bind default mappings
    debug = false; -- Print debug information
    opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
    resizing_mappings = false; -- Binds arrow keys to resizing the floating window.
    post_open_hook = nil; -- A function taking two arguments, a buffer and a window to be ran as a hook.
    focus_on_open = true; -- Focus the floating window when opening it.
    dismiss_on_move = false; -- Dismiss the floating window when moving the cursor.
    force_close = true, -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
    bufhidden = "wipe", -- the bufhidden option to set on the floating window. See :h bufhidden
}
local function lsp_keymaps()
    km("n", "<leader>k", vim.lsp.buf.hover, {buffer=0})
    km("n", "<leader>gd", vim.lsp.buf.definition, {buffer=0})
    km("n", "<leader>gi", vim.lsp.buf.implementation, {buffer=0})
    km("n", "<leader>a", vim.lsp.buf.code_action, {buffer=0})
    km("n", "<leader>in", vim.lsp.buf.incoming_calls, {buffer=0})
    km("n", "ff", vim.lsp.buf.formatting_seq_sync, {buffer=0})

    km("n", "<F2>", vim.lsp.buf.rename, {buffer=0})

    km("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
    km("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})

    km("n", "<leader>gD", require('goto-preview').goto_preview_definition)
    km("n", "<leader>gR", require('goto-preview').goto_preview_references)
    km("n", "<leader>gI", require('goto-preview').goto_preview_implementation)

    km("n", "<leader>gX", require('goto-preview').close_all_win)
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
            require('goto-preview').setup {}

            local group = vim.api.nvim_create_augroup("hellohello", {clear = true})

            vim.api.nvim_create_autocmd("lsp", { callback = function ()
                vim.lsp.buf.formatting_seq_sync()
            end, group = "lsp", buffer = 0 })

            lsp_keymaps()
        end,
    }
    if enhance_server_opts[server.name] then
        enhance_server_opts[server.name](opts)
    end

    server:setup(opts)
end)
