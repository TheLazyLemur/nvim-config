local km = vim.keymap.set
local opts = { noremap = true, silent = true }
km("", "<Space>", "<Nop>")

km("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files({file_ignore_patterns = { \"venv\", \"node_modules\" }})<CR>")
km("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
km("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>")
km("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
