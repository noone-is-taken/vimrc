
if has('nvim')

	call plug#begin('~/.vim/plugged')

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
	Plug 'https://github.com/vim-airline/vim-airline'
	call plug#end()

endif



filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ


" Maps NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>m <C-w>l
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd VimEnter * NERDTree | wincmd p


syntax on
"set bg=dark ai et sw=2 ts=2
colorscheme industry

"sets
set relativenumber
set number

set wildmenu

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


