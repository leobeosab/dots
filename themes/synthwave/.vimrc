" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'townk/vim-autoclose'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

"Pathogen setup
execute pathogen#infect()
call pathogen#helptags()

" Nerd-Tree Control+N
map <C-n> :NERDTreeToggle<CR>

" The normies
set number
syntax on
set tabstop=4
" Set theme
" color dracula
