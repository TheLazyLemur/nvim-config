local km = vim.keymap.set
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
