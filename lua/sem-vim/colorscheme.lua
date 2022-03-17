local function loadColor()
    vim.cmd [[
        try
            colorscheme dracula
        catch
            colorscheme peachpuff
        endtry

        try
            let g:airline_theme='dracula'
        catch
            let g:airline_theme='peachpuff'
        endtry
    ]]
end

local ran, errorMsg = pcall( loadColor )
if not ran then
    vim.cmd [[ colorscheme default ]]
    vim.cmd [[ let g:airline_theme='' ]]
end
