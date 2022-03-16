local km = vim.keymap.set
local opts = { noremap = true, silent = true }
km("", "<Space>", "<Nop>")

vim.cmd [[let NERDTreeMapOpenInTab='<ENTER>']]
vim.cmd [[let NERDTreeMapActivateNode='v']]
km("n", "<leader>n", "<cmd>NERDTreeFocus<CR>")
km("n", "<C-n>", "<cmd>NERDTree<CR>")
km("n", "<C-t>", "<cmd>NERDTreeToggle<CR>")
