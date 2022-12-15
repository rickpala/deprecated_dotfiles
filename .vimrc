set nocompatible              " be iMproved, required
filetype off                  " required
set number
set relativenumber
set smartindent
set sidescroll=1
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set incsearch
set colorcolumn=80
syntax enable
colorscheme monokai

let g:auto_save = 1 " enable AutoSave on Vim startup


" Tabs
nnoremap <C-l>h :tabr<cr>
nnoremap <C-l>l :tabl<cr>
nnoremap <C-l>j :tabp<cr>
nnoremap <C-n> :tabn<cr>
nnoremap <C-t> :tabnew<cr>
nnoremap <C-x> :tabc<cr>


" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
"  Plugin 'jiangmiao/auto-pairs'
"  Plugin 'scrooloose/nerdtree'
"  Plugin 'frazrepo/vim-rainbow'
"  Plugin 'itchyny/lightline.vim'
"  Plugin '907th/vim-auto-save'
" call vundle#end()            " required
" filetype plugin indent on    " required

"To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
" Begin Vim-Plug (for NeoVim)
call plug#begin()
" The default plugin directory:
" - /home/ricky/.local/share/nvim/plugged
" - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

" Necessary lua dependencies
Plug 'nvim-lua/plenary.nvim'

" Gives brackets rainbow colors for easy matching
" https://github.com/frazrepo/vim-rainbow
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1

" Pairs brackets automatically.
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'

" Airline power bar on the bottom of the window.
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" Fancy dashboard on startup.
" https://github.com/glepnir/dashboard-nvim
Plug 'glepnir/dashboard-nvim'

" A class outline viewer for Vim.
" https://github.com/preservim/tagbar
Plug 'preservim/tagbar'
nmap <leader>t :TagbarToggle<CR>

" Snippets for Vim. Ultisnips is the engine, and vim-snippets holds the
" snippets separately.
" https://github.com/SirVer/ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Comment out lines with 'gcc' or 'gc'.
" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" A highly extendable fuzzy finder over lists.
" https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" <leader> defaults to the backslash \ key.
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" View directories with <C-t>
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-c> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Icons for files within plugins
Plug 'ryanoasis/vim-devicons'

" Auto complete for various language. Notes: comes with many deps.
" " IMPORTANT: :help Ncm2PopupOpen for more information
" autocmd BufEnter * call ncm2#enable_for_buffer() "enable ncm2 everywhere
" set completeopt=noinsert,menuone,noselect
" https://github.com/ncm2/ncm2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" Completions for ncm2, found at github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-github'
Plug 'subnut/ncm2-github-emoji'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'  " Python
Plug 'ObserverOfTime/ncm2-jc2' " Java
Plug 'ncm2/ncm2-tern'
Plug 'ncm2/nvim-typescript'
Plug 'ncm2/ncm2-ultisnips'
call plug#end()


set timeoutlen=1000 ttimeoutlen=0

