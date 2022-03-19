local km = vim.keymap.set

local telescope = require('telescope.builtin')

local ignore_patterns = {
    "venv",
    "node_modules",
    "bin",
    "leolite",
    "obj"
}

local function find_files()
    telescope.find_files({
        file_ignore_patterns = ignore_patterns
    })
end

local function live_grep()
    telescope.live_grep({
        file_ignore_patterns = ignore_patterns
    })
end

local function diagnostics()
    telescope.diagnostics({
        file_ignore_patterns = ignore_patterns
    })
end

local function find_buffers()
    telescope.buffers()
end

local function help_tags()
    telescope.help_tags()
end

km("", "<Space>", "<Nop>")
km("n", "<leader>f", find_files)
km("n", "<leader>g", live_grep)
km("n", "<leader>b", find_buffers)
km("n", "<leader>h", help_tags)
km("n", "<leader>df", diagnostics)
