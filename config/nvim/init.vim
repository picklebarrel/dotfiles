set clipboard=unnamedplus
set number
let mapleader = " "
noremap <leader>q <Cmd>q<CR>
noremap <leader>w <Cmd>w<CR>
" For tomorrow, a summary of getting autoload going
" Look for a plug.vim (the .vim suffix ommitted in the syntax) within the
" autoload directory. That directory is specified by # in the syntax
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-plug'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'kylechui/nvim-surround'
Plug 'wellle/targets.vim'
call plug#end()
" The following command is needed to activate nvim surround once it is plugged.
" This command is written in Lua, which is why we write 'lua' at the start.
" Recall that lua is native to nvim, which is why we can do this. Wouldn't work in vim. 
lua require("nvim-surround").setup()

" Ultisnips configuration
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "jk"
let g:UltiSnipsJumpBackwardTrigger = "kj"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
nnoremap <leader>U <cmd>call UltiSnips#RefreshSnippets()<CR><cmd>echo "snippets refreshed"<cr>

"Set tabstop"
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

