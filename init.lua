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
end

require "user.plugins"
require "user.completion"
require "user.lsp"
require "user.treesitter"
require "user.options"
require "user.keymaps"
