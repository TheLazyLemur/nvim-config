local km = vim.keymap.set
local opts = { noremap = true, silent = true }
km("", "<Space>", "<Nop>")

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
local function _lazygit_toggle()
    lazygit:toggle()
end

km("n", "<F12>", ":ToggleTerm<CR>")
km("t", "<F12>", [[<C-\><C-n>:ToggleTermToggleAll<CR>]])
km("i", "<F12>", [[<C-\><C-n>:ToggleTerm<CR>]])
km("n", "<leader><leader>g", _lazygit_toggle, {noremap = true, silent = true})
km("n", "<leader><leader>t", ":ToggleTerm<CR>", {noremap = true, silent = true})
km("t", "<leader><leader>t", [[<C-\><C-n>:ToggleTermToggleAll<CR>]], { silent = true })
km("n", "<leader><leader><leader>", ":ToggleTerm<CR>", { silent = true })
