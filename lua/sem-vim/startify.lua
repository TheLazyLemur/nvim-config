vim.cmd [[
    function! s:gitModified()
        return map(['~/.config/nvim', '~/.zshrc', '~/.bash_files'], "{'line': v:val, 'path': v:val}")
    endfunction

    let g:startify_custom_header =
    \ startify#pad(split(system('figlet -w 100 Sem-Vim'), '\n'))
        let g:startify_lists = [
              \ { 'type': function('s:gitModified'),  'header': ['  base files']},
              \ { 'type': 'files',     'header': ['   Recent']            },
              \ { 'type': 'dir',       'header': ['   Recent '. getcwd()] },
              \ { 'type': 'sessions',  'header': ['   Sessions']       },
              \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
              \ { 'type': 'commands',  'header': ['   Commands']       },
              \ ]
]]
