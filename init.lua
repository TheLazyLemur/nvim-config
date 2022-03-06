RELOAD = function (...)
    return require("plenary.reload").reload_module(...)
end

R = function (name)
    RELOAD(name)
    return require(name)
end

RELOAD_CONFIG = function ()
    R("user.plugins")
    R("user.completion")
    R("user.lsp")
    R("user.treesitter")
    R("user.options")
    R("user.keymaps")
    require("notify").notify("Neovim reloaded", "info")
end

require "user.plugins"
require "user.treesitter"
require "user.options"
require "user.keymaps"
require "user.completion"
require "user.lsp_installer"

require("notify").notify("Neovim loaded", "info")
