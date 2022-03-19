local function loadColor()
    vim.cmd [[
        try
            colorscheme dracula
        catch
            colorscheme industry
        endtry
    ]]
end

loadColor()
