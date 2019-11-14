" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'townk/vim-autoclose'
Plugin 'pangloss/vim-javascript'

call vundle#end()

" Spaces > Tabs
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

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
