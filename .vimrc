set bg=dark ai et sw=2 ts=2

"sets
set relativenumber


"normal map

"replace word with the first copied
nmap cx ciw<Esc>"0p
nmap <C-n> :set invnumber<CR>
"new line
nmap nl o<Esc>k 
"nmap <A-d> dd
"commands to move up or down the line
nmap <A-j> ddp
nmap <A-k> ddkP



"input map
"exit input mode
imap <C-l> <Esc>
imap ii <Esc>

" Leader Mappings
map <Space> <leader>
map <Leader>w :wa<CR>
map <Leader>q :qall<CR>


