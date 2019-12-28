
" vim plug 
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'elixir-editors/vim-elixir'
Plug 'junegunn/fzf.vim'

call plug#end()

set nocompatible
filetype plugin on

" Colors {{{
syntax enable
colorscheme jellybeans 
set t_Co=256
"}}}

" Spaces & Tabs {{{
set softtabstop=2
set autoindent
set shiftwidth=2
set smartindent
"}}}

" UI Layout {{{
set number
set showcmd
set nocursorline
set showmatch
set wildmenu
" }}}

" Searching {{{
set ignorecase
set incsearch
set hlsearch
" }}}

" Finding files: {{{
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" }}}

" Jumping Tags: {{{
" Create the 'tags' file
command! MakeTags !ctags -R .
" NOW WE CAN
" - Use <C-]> to jump to tag under cursor
" - Use g + <C-]> for ambiguous tags
" - Use <C-t> to jump back up the tag stack
" }}}

" AUTOCOMPLETE: {{{
" <c-x><c-n> for JUST this file
" <c-x><c-f> for filenames (works with our path trick!)
" <c-x><c-]> for tags only
" <c-n> for anything specified by the 'complete' option
" <c-n> to forth in the suggestion list
" <c-p> to go back in the suggestion list
" }}}

" FILE BROWSING: {{{
" Tweaks for browsing
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1			" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browser-maps| for more mappings
" }}}


autocmd FileType json syntax match Comment +\/\/.\+$+

" Javascript {{{
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
"}}}

" coc.nvim setting {{{

" Better display for message
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

"}}}

" Coc-Prettier {{{
command! -nargs=0 Prettier :CocCommand prettier.formatFile 
" }}}
