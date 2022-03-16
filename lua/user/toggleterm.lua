local function _lazygit_toggle()
    local Terminal  = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
    lazygit:toggle()
end

local function _glow_toggle()
    local Terminal  = require('toggleterm.terminal').Terminal
    local glow = Terminal:new({ cmd = "glow", hidden = true })
    glow:toggle()
end

local km = vim.keymap.set
km("", "<Space>", "<Nop>")
km("n", "<leader><leader>t", ":ToggleTerm<CR>", {noremap = true, silent = true})
km("t", "<leader><leader>t", [[<C-\><C-n>:ToggleTermToggleAll<CR>]], { silent = true })
km("n", "<leader>gl", _glow_toggle, {noremap = true, silent = true})
km("n", "<leader>git", _lazygit_toggle, {noremap = true, silent = true})
