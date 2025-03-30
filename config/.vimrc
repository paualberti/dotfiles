""""""""""""""""
" Autocommands "
""""""""""""""""

augroup user_cmds
	autocmd!

	" Resize splits when the terminal is resized
	autocmd VimResized * wincmd =

	" Delete trailing whitespace before saving
	autocmd BufWritePre * %s/\s\+$//e

	" Go to last location
	autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

	" Quit help/man windows with q
	autocmd FileType help,man nnoremap <buffer> q <Cmd>wincmd q<CR>
augroup END

"""""""""""
" Keynoremaps "
"""""""""""

let noremapleader = " " " map leader to Space

nnoremap <leader>z z=
nnoremap <leader>i =gg=G

" Improve consistency
tnoremap <C-o> <C-\\><C-n>
inoremap <C-c> <Esc>
xnoremap <C-c> <Esc>
nnoremap J mzJ`z

" Replace visually selected text
xnoremap <leader>rf "hy:%s/<C-r>h/
xnoremap <leader>rl "hy:s/<C-r>h/

" Copy/paste with system clipboard
nnoremap <leader>y "+y
xnoremap <leader>y "+y
nnoremap <leader>p "+p
xnoremap <leader>p "+P

" Search inside visually highlighted text. Use `silent = false` for it to
" make effect immediately.
xnoremap g/ <esc>/\\%V

"""""""""""
" Options "
"""""""""""

" General
set undofile

set nobackup
set nowritebackup
set noswapfile

set mouse=a
filetype plugin indent on

" Appearance
" Appearance
set breakindent
set nocursorline
set linebreak
set number
set relativenumber
set splitbelow
set splitright
set nohlsearch
set shiftwidth=4
set tabstop=4
set softtabstop=4
set scrolloff=7
set sidescrolloff=8
set statusline=2

set ruler
set showmode
set nowrap

set signcolumn=yes

set guicursor=""

" Editing
set ignorecase
set incsearch
set infercase
set smartcase
set smartindent

set completeopt=menuone,noinsert,noselect
set virtualedit=block
set formatoptions=qjl1

" Some opinioneted extra UI options
set pumheight=10

syntax enable

" Fold options
set foldmethod=indent
set foldlevel=99
