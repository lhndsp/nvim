set nocompatible              
filetype off                  

set rtp+=~/.config/nvim/init.vim
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/plugins')
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'junegunn/goyo.vim'
Plugin 'jreybert/vimagit'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'dracula/vim', { 'name': 'dracula' }
"Plugin 'morhetz/gruvbox'
Plugin 'lervag/vimtex'
Plugin 'chrisbra/csv.vim'
call vundle#end()

filetype plugin indent on    
filetype plugin on

" Configurando ambiente:
    packadd! dracula
    syntax enable   
    colorscheme dracula
    set tabstop=4          
    set softtabstop=4      
    set shiftwidth=4
    set autoindent          
    set fileformat=unix
    set expandtab          
    set number     
    set numberwidth=1
    set relativenumber
    set showcmd          
    set showmode
    set cursorline        
    set wildmenu           
    set splitbelow
    set splitright
    set encoding=utf-8
    set ts=2 sw=2 et
    set termguicolors
    set noswapfile

" Atalhos de navegacao:
    let mapleader = " "
   
    map - dd P
    nnoremap <leader> za 
    nnoremap <leader>n :tabnew<ENTER> 
    nnoremap <leader>c :tabclose<ENTER>
    nnoremap <leader>nv :vnew<ENTER>
    
    noremap <Leader>y "*y
    noremap <Leader>p "*p
    noremap <Leader>Y "+y
    noremap <Leader>P "+p

    nnoremap <leader>l viw U
    nnoremap <leader>a viw u
    nnoremap <leader>d dd

    "Ctrl-j move to the split below
    nnoremap <C-J> <C-W><C-J>
    "Ctrl-k move to the split above
    nnoremap <C-K> <C-W><C-K>
    "Ctrl-l move to the split to the right
    nnoremap <C-L> <C-W><C-L>
    "Ctrl-h move to the split to the left    
    nnoremap <C-H> <C-W><C-H> 


    nnoremap <C-N> gt
    nnoremap <C-P> gT

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_theme='cobalt2'
let g:indent_guides_start_level = 2
let g:tex_flavor = 'latex'

" autocommands
if has("autocmd")
  " Headers
  augroup templates
    autocmd bufnewfile *.sh 0r $HOME/.config/nvim/templates/sh_shebang.txt
    autocmd bufnewfile *.py 0r $HOME/.config/nvim/templates/python_header.txt
    autocmd bufnewfile .gitignore 0r $HOME/.config/nvim/templates/defaut_gitignore.txt
    autocmd bufnewfile *.py exe "1," . 10 . "g/@file:.*/s//@file: " .expand("%") 
    autocmd bufnewfile *.py exe "1," . 10 . "g/@date:.*/s//@date: " .strftime("%c") 
    "autocmd Bufwritepre,filewritepre *.py execute "normal ma"
    "autocmd Bufwritepre,filewritepre *.py exe "1," . 10 . "g/@last_modified:.*/s//@last_modified: " .strftime("%c")
    "autocmd bufwritepost,filewritepost *.py execute "normal `a"
  augroup END
endif
