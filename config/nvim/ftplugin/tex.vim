" Simple VimTeX configuration
" Because of its placement in /ftplugin this file is automatically sourced by
" nvim. This occurs afer init.vim is run. This is why the <leader> is set to a
" space. Is leader some sort of environment varialbe that is set in one file
" (i.e., init.vim) and passed to another file (i.e., this file)?
" Ask Elijan about this
let g:vimtex_view_method = 'zathura'
" shortcut to open PDF viewer at the position of the cursor in the .tex file
noremap <leader>v <Cmd>VimtexView<CR>
" update the file to the directory (as opposed to write) and then compile
noremap <leader>c <Cmd>update<CR><Cmd>VimtexCompileSS<CR>
