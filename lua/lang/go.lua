print("Loading go.lua")

local function go_linting()
    vim.cmd [[
    let g:syntastic_go_checkers = ['gofmt', 'golint']
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    ]]
end

go_linting()
