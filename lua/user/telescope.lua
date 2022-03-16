local km = vim.keymap.set

km("", "<Space>", "<Nop>")
km("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files({file_ignore_patterns = { \"venv\", \"node_modules\" }})<CR>")
km("n", "<leader>g", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
km("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>")
km("n", "<leader>h", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
