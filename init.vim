:set number
:set mouse=a
:set autoindent
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4


call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'			"Status bar
Plug 'https://github.com/preservim/nerdtree'				"NerdTree
Plug 'https://github.com/rafi/awesome-vim-colorschemes'		"Retro Schemes
Plug 'https://github.com/preservim/tagbar'					"Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors'		"CTRL + N for multiple cursors
Plug 'https://github.com/voldikss/vim-floaterm'				"Floating terminal window
Plug 'https://github.com/tpope/vim-commentary'				"GCC for commenting lines
Plug 'neoclide/coc.nvim', {'branch': 'release'}				"Conquer of completion
Plug 'dense-analysis/ale'									" VimScript

call plug#end()


set encoding=UTF-8


"NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NerdTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


"Tagbar
nmap <F8> :TagbarToggle<CR>


"Floaterm
nnoremap <C-_> :FloatermNew<CR>
let g:floaterm_width = 0.9
let g:floaterm_height = 0.7
"Map ESC key to kill the floaterm
autocmd FileType floaterm tnoremap <buffer> <Esc> <C-\><C-n>:FloatermKill<CR>



"Colorscheme
:colorscheme deus


"Coc
let g:coc_global_extensions = ['coc-clangd']				"C/C++ Language Server
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"		"Enter key tab for selecting from the list

