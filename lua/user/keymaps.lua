local km = vim.keymap.set
local opts = { noremap = true, silent = true }
km("", "<Space>", "<Nop>")

-- Alt   = Windows
-- Better window navigation
km("n", "<A-Up>", "<C-w>k")
km("n", "<A-k>", "<C-w>k")
km("n", "<A-Down>", "<C-w>j")
km("n", "<A-j>", "<C-w>j")
km("n", "<A-Left>", "<C-w>h")
km("n", "<A-h>", "<C-w>h")
km("n", "<A-Right>", "<C-w>l")
km("n", "<A-l>", "<C-w>l")

-- Ctrl  = Resize
-- Resize with arrows
km("n", "<C-Up>", ":resize +2<CR>")
km("n", "<C-k>", ":resize +2<CR>")
km("n", "<C-Down>", ":resize -2<CR>")
km("n", "<C-j>", ":resize -2<CR>")
km("n", "<C-Left>", ":vertical resize -2<CR>")
km("n", "<C-h>", ":vertical resize -2<CR>")
km("n", "<C-Right>", ":vertical resize +2<CR>")
km("n", "<C-l>", ":vertical resize +2<CR>")

-- Shift = Tabs
-- Navtigate tabs
km("n", "<S-Right>", ":tabnext<CR>")
km("n", "<S-l>", ":tabnext<CR>")
km("n", "<S-Left>", ":tabprev<CR>")
km("n", "<S-h>", ":tabprev<CR>")

-- Alt + Shift = Buffers
-- Navigate buffers
km("n", "<A-S-Right>", ":bnext<CR>")
km("n", "<A-S-l>", ":bnext<CR>")
km("n", "<A-S-Left>", ":bprevious<CR>")
km("n", "<A-S-h>", ":bprevious<CR>")

-- Telescope keymaps
km("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
km("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
km("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>")
km("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")

-- NERDtree keymaps
vim.cmd [[let NERDTreeMapOpenInTab='<ENTER>']]
vim.cmd [[let NERDTreeMapActivateNode='v']]
km("n", "<leader>n", "<cmd>NERDTreeFocus<CR>")
km("n", "<C-n>", "<cmd>NERDTree<CR>")
km("n", "<C-t>", "<cmd>NERDTreeToggle<CR>")

-- ToggleTerm keymaps
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
