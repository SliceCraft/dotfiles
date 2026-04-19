" line numbers
set relativenumber
set number relativenumber

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
set noerrorbells
set linebreak

" indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" visual behaviour
set scrolloff=4
set encoding=utf-8

" disable mouse
set mouse=""

" update files much more quickly
set updatetime=500

" write quit shortcuts
nnoremap <Leader>w   :w<CR>
nnoremap <Leader>q   :q!<CR>
nnoremap <Leader>Q   :wq<CR>

" word deletion
imap <C-h> <C-W>
inoremap <C-Delete> <C-O>dw

" better scrolling
nnoremap <PageUp>   <C-U>
nnoremap <PageDown> <C-D>
nnoremap <Space>    <C-D>
nnoremap <S-Space>  <C-U>

" I use <C-U> for scrolling so when in insert mode I don't want to nuke everything
inoremap <C-U> <Nop>

" copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_

" these are bugged on my system right now, just ctrl+shift+v for now
" I still want these enabled since it does work within jetbrains
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

autocmd BufWritePre <buffer> %s/\s\+$//e
