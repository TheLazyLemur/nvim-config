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
require "user.completion"
require "user.lsp"
require "user.treesitter"
require "user.options"
require "user.keymaps"

require('specs').setup{
    show_jumps  = true,
    min_jump = 30,
    popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 10, -- time increments used for fade/resize effects
        blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
        width = 100,
        winhl = "PMenu",
        fader = require('specs').linear_fader,
        resizer = require('specs').shrink_resizer
    },
    ignore_filetypes = {},
    ignore_buftypes = {
        nofile = true,
    },
}

require("notify").notify("Neovim loaded", "info")
