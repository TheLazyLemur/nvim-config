require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.go"

-- Use a loop to conveniently call 'setup' on multiple servers and

vim.opt.completeopt = {"menu","menuone,noselect"}

-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'gopls' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end
