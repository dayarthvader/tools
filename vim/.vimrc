" set numbering and relative numbering
set number
set relativenumber

" Vundle configuration after vundle install
" https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" start Plugin config *******************************************************
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nerdtree for filesystem navigation
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" ctrlp for fuzzy file finding
Plugin 'ctrlpvim/ctrlp.vim'
set rtp+=~/.vim/bundle/crtrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" YouCompleteMe for code completion
Plugin 'ycm-core/YouCompleteMe'
" Refer the official page as this plugin is changing rapidly as on may 2020
" https://github.com/ycm-core/YouCompleteMe#installation
" Extra project specific settings for C/C++ development as below
" If you've installed YCM with cland-completer for C family languages, you may
" need to let clangd know about your project settings for a holistic code
" completion experience. Ex. For CMake based projects, you need to place
" compilation_commands.json in the project's source root.
" Also consider CoC as alternative, some folks like that better combined with
" intellisense

" Gruvbox for pleasant look coloursheme
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required
" All of your Plugins must be added before the following line ****************
"  Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
colorscheme gruvbox
