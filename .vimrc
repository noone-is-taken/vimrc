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
nmap <A-j> ddp
nmap <A-k> ddkP



"inputmap
imap <C-l> <Esc>



" Leader Mappings
map <Space> <leader>
map <Leader>w :update<CR>
map <Leader>q :qall<CR>


