let g:coc_node_path = 'C:\Program Files\nodejs\node.exe'
if has('nvim')

	call plug#begin('~/.vim/plugged')

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc-json', { 'do' : 'npm install --fronzen-lockfile' }
	Plug 'scrooloose/nerdtree'
	call plug#end()

endif


if !has('nvim')
	filetype off
	set shellslash set rtp+=~/vimfiles/bundle/Vundle.vim
	call vundle#begin('~/vimfiles/bundle')
	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'

	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required

	" see :h vundle for more details or wiki for FAQ
endif

" GoTo code navigation.
nmap <leader> gd <Plug>(coc-definition)
nmap <leader> gy <Plug>(coc-type-definition)
nmap <leader> gi <Plug>(coc-implementation)
nmap <leader> gr <Plug>(coc-references)


let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier'
  \ ]

" Maps NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>m <C-w>l
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree | wincmd p

nnoremap <leader>v "*p

:syntax on
"set bg=dark ai et sw=2 ts=2
colorscheme industry

"sets
set relativenumber
set number

set wildmenu
set mouse=a
set path+=**
set scrolloff=5
"normal map

"replace word with the first copied
nmap cx ciw<Esc>"0p
"nmap <C-n> :set invnumber<CR>
"new line
nmap nl o<Esc>k 
"nmap <A-d> dd
"commands to move up or down the line
nmap <A-j> ddp
nmap <A-k> ddkP

nmap <A-w> <C-w>

"input map
"exit input mode
imap <C-l> <Esc>
imap ii <Esc>
imap pp <Esc>pi
imap ;; <Esc>A;<Esc>
imap <C-v> <Esc>"*p

" Leader Mappings
map <Space> <leader>
map <Leader>w :wa<CR>
map <Leader>q :qall<CR>


