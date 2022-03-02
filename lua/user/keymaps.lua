local km = vim.keymap.set
local opts = { noremap = true, silent = true }
km("", "<Space>", "<Nop>")

-- Normal --
-- Better window navigation
km("n", "<C-h>", "<C-w>h")
km("n", "<C-j>", "<C-w>j")
km("n", "<C-k>", "<C-w>k")
km("n", "<C-l>", "<C-w>l")

-- Resize with arrows
km("n", "<C-Up>", ":resize +2<CR>")
km("n", "<C-Down>", ":resize -2<CR>")
km("n", "<C-Left>", ":vertical resize -2<CR>")
km("n", "<C-Right>", ":vertical resize +2<CR>")

-- Navigate buffers
km("n", "<S-l>", ":bnext<CR>")
km("n", "<S-h>", ":bprevious<CR>")

-- Exit insert mode
km("i", "jk", "<ESC>")

-- Move text up and down
km("v", "<A-j>", ":m .+1<CR>==", opts)
km("v", "<A-k>", ":m .-2<CR>==", opts)
km("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
km("x", "J", ":move '>+1<CR>gv-gv", opts)
km("x", "K", ":move '<-2<CR>gv-gv", opts)
km("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
km("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope keymaps
km("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
km("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
km("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>")
km("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")

-- NERDtree keymaps
km("n", "<leader>n", "<cmd>NERDTreeFocus<CR>")
km("n", "<C-n>", "<cmd>NERDTree<CR>")
km("n", "<C-t>", "<cmd>NERDTreeToggle<CR>")
km("n", "<C-f>", "<cmd>NERDTreeFind<CR>")

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

