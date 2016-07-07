"" updated : 14-02-2014
"" version : 1.2.0"
"" revision : 0
"" author : andrés hoyos idrobo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 important -----------------------------------------------------------------
set nocompatible                                         " don't behave like vi
autocmd! bufwritepost .vimrc source %           " automatic reloading of .vimrc
 
""Auto installing NeoBundle (Pluging manager)
let iCanHazNeoBundle=1
let neobundle_readme=expand($HOME.'/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
    echo "Installing NeoBundle"
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silen !git clone https://github.com/shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
    let iCanHazNeoBundle=0
endif
"" Calling NeoBundle
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand($HOME.'/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'reinh/vim-makegreen'
"" Git 
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'gregsexton/gitv'
"" Pluging for python programming
NeoBundle 'klen/python-mode',{'autoload':{'filetypes':['python']}}
"" indent lines visualization
NeoBundle 'Yggdroot/indentLine',{'autoload':{'filetypes':['python', 'css', 'kivy', '']}}
"" coverage.py informs
NeoBundle 'alfredodeza/coveragepy.vim',{'autoload':{'filetypes':['python']}}
NeoBundle 'kana/vim-smartinput'
NeoBundle 'tpope/vim-commentary'                                      " comment
NeoBundle 'majutsushi/tagbar'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'fs111/pydoc.vim'                             " documentation python
NeoBundle 'kshenoy/vim-signature'                                   " signature
NeoBundle 'joedicastro/vim-powerline'                               " statusbar
"" undo navigation bar
NeoBundleLazy 'sjl/gundo.vim',{'autoload':{'commands': 'GundoToggle'}}
" themes
NeoBundle 'tomasr/molokai'
NeoBundle 'marcus/vim-mustang'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'                                          " tree
NeoBundle 'mileszs/ack.vim'
"" diff 
NeoBundleLazy 'joedicastro/DirDiff.vim', { 'autoload': { 'commands' : 'DirDiff'}}
NeoBundle 'davidhalter/jedi-vim' 
NeoBundle 'python-rope/rope'
NeoBundle 'scrooloose/syntastic'                     " general syntaxis checker

NeoBundle 'farfanoide/vim-kivy'
" Mostly for web
NeoBundle 'sukima/xmledit'
NeoBundle 'tomtom/tlib_vim.git' 
NeoBundle 'MarcWeber/vim-addon-mw-utils.git'
NeoBundle 'honza/vim-snippets'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'bingaman/vim-sparkup'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-scripts/mru.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Rykka/colorv.vim'                                       " CSS Colors
NeoBundle 'plasticboy/vim-markdown'                                  " markdown
NeoBundle 'SirVer/ultisnips'                                  " snippets gestor
NeoBundle 'Shougo/neocomplete.vim'                               " autoComplete
NeoBundle 'godlygeek/tabular'                            " aling with respect =


if iCanHazNeoBundle==0
    echo "Installing Bundles"
    echo ""
    :NeoBundleInstall
endif

call neobundle#end()

NeoBundleCheck
" 2 moving around, searching and patterns -------------------------------------
set incsearch
set showmatch
set smartcase
set ignorecase
set matchtime=1
" 3 tags ----------------------------------------------------------------------
" 4 displaying text -----------------------------------------------------------
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶
set fillchars+=stl:\ ,stlnc:\
set number
set numberwidth=4
set linebreak
set scrolloff=1
set modeline
set textwidth=79                       " text width, python standard text width
set fo=croql
set lazyredraw
set colorcolumn=+1
" set nowrap
set wrap linebreak nolist
let g:cursorline_on=0
let g:cursorcolumn_on=0
" 5 syntax, highlighting and spelling -----------------------------------------
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%80v.\+/
set hlsearch
set background=dark
set filetype=on
"set spelllang=en
"set spell                                              " Verify the spelling
" 6 multiple windows ----------------------------------------------------------
set hidden                                  " allow to bg unsaved buffers, etc.
" 7 multiple tab pages --------------------------------------------------------
set tabpagemax=55                                 " Maximun number of open tabs
" 8 terminal ------------------------------------------------------------------
set title                                      " adds the title to the terminal
set t_Co=256
set ttyfast       " send more data to the terminal to make screen update faster
set laststatus=2                                " displaying status line always
set noshowmode                                                  " hide the mode 
" 9 using the mouse -----------------------------------------------------------
set mouse=a
" 10 GUI ----------------------------------------------------------------------
set guifont=Dejavu\ Sans\ Mono\ for\ Powerline\ 11 
autocmd VimResized * exe "normal! \<c-w>="
" 11 printing -----------------------------------------------------------------
" 12 messages and info --------------------------------------------------------
set showcmd                                          " show normal etc commands
set ruler                                                " show cursor position
set ls=2                                            " state line always visible
" 13 selecting text -----------------------------------------------------------
" 14 editing text -------------------------------------------------------------
set nrformats-=octal
set backspace=indent,eol,start
" 15 tabs and indenting -------------------------------------------------------
set autoindent
set smartindent
set copyindent 
set expandtab                                           " Spaces istead of tabs
set shiftwidth=4                                                " for > command
set softtabstop=4                                               " for < command
" 16 folding ------------------------------------------------------------------
set foldnestmax=10
set foldmethod=indent
set foldlevel=1
set foldcolumn=2
set nofoldenable                                       " do not fold by default
"" commute fold 
nnoremap \ za
vnoremap \ za
" 17 diff mode ----------------------------------------------------------------
set diffopt=filler
set diffopt+=context:4
set diffopt+=iwhite
set diffopt+=vertical
" 18 mapping ------------------------------------------------------------------
set timeout
set timeoutlen=1000
set ttimeoutlen=50                     " 50 ms for escqpe timeout isteqd 1000ms
" experimental mappings
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <
" abbreviations
cnoreabbrev W w
cnoreabbrev WQ wq
cnoreabbrev wrap set wrap
cnoreabbrev nowrap set nowrap
nnoremap \ ,
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> <c-^>
" 19 reading and writing files ------------------------------------------------
set backupdir=$HOME/.vim/tmp/backup
" 20 the swap file ------------------------------------------------------------
set directory=$HOME/.vim/tmp/swap
" 21 command line editing -----------------------------------------------------
set wildmenu
set wildmode=list:longest,full
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~ 
set wildignore+=*.luac 
set wildignore+=*.jar 
set wildignore+=*.pyc " Python byte code
set wildignore+=*.stats " Pylint stats"
set history=1000
set undofile
set undoreload=100
set backup
set noswapfile
set undodir=$HOME/.vim/tmp/backup
" 22 executing external commands ----------------------------------------------
" 23 running make and jumping to errors ---------------------------------------
" 24 language specific --------------------------------------------------------
" 25 multi-byte characters ----------------------------------------------------
set encoding=utf-8
" 26 various ------------------------------------------------------------------

" important -------------------------------------------------------------------
filetype plugin indent  on
filetype plugin on
" moving around, searching and patterns
set omnifunc=syntaxcomplete#Complete                    " Enable omnicompletion
" tags ------------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>                                " Tagbar(tag's menu)
" displaying text -------------------------------------------------------------
" syntax, highlighting and spelling -------------------------------------------
" terminal --------------------------------------------------------------------
set syntax=on
let g:air_powerline_fonts = 1                  " integrate with powerline fonts
let g:Powerline_symbols='unicode'
" using the mouse -------------------------------------------------------------
" GUI -------------------------------------------------------------------------
"colorscheme mustang
colorscheme molokai                                          " Select the theme
let g:molokai_original = 1
let g:rehash256 = 1
" printing --------------------------------------------------------------------
" messages and info -----------------------------------------------------------
" selecting text --------------------------------------------------------------
" editing text ---------------------------------------------------------------- 
" tabs and indenting ----------------------------------------------------------
" folding --------------------------------------------------------------------- 
map <silent><Leader>L : IntentLinesToggle<CR>
let g:indentLine_enable=0
let g:indentLine_char='|'
let g:indentLine_color_term=239
nmap <Leader>eh :set list!<CR>
" diff mode -------------------------------------------------------------------
" mapping ---------------------------------------------------------------------
let mapleader=',' 
" reading and writing files ---------------------------------------------------
" the swap file ---------------------------------------------------------------
" command line editing --------------------------------------------------------
noremap <F5> :GundoToggle<CR>                                           " gundo
let g:gundo_preview_botton = 1
let g:gundo_width = 6
let g:gundo_preview_height = 40
let g:gundo_right = 1
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
" executing external commands -------------------------------------------------
" running make and jumping to errors ------------------------------------------
" language specific -----------------------------------------------------------
" multi-byte characters -------------------------------------------------------
" various ---------------------------------------------------------------------

autocmd BufRead *.txt set tw=79
nnoremap <C-v> "+P=']
inoremap <C-v> <C-o>"+P<C-o>=']
map <leader>td <Plug>TaskList

if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

function! MakeDirIfNoExists(path)
    if !isdirectory(expand(a:path))
        call mkdir(expand(a:path),"p")
    endif
endfunction

silent! call MakeDirIfNoExists(&undodir)              " creating undo directory
silent! call MakeDirIfNoExists(&backup)             " creating backup directory
silent! call MakeDirIfNoExists(&directory)             " crating swap directory

" autocommands 
augroup vimrc
    au BufReadPre * setlocal foldmethod=indent
    au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

augroup VimScript
    autocmd!
    autocmd! BufWritePost vimrc source % | call Pl#Load()
augroup END

autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*kv
            \:call <SID>StripTrailingWhitespaces()
autocmd BufNewFile,BufReadPost *.md set filetype=markdown  " to detect markdown
au BufNewFile,BufRead *.kv set filetype=yaml
" autocmd BufNewFile,BufReadPost *.kv set filetype=kivy          " to detect kivy

augroup Python
        autocmd!
        autocmd FileType python set smartindent
        autocmd FileType python set ft=python.django             " for SnipMate
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        autocmd FileType python setlocal commentstring=#%s
augroup END


function! s:QuickfixToggle()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            cclose
            lclose
            return
        endif
    endfor
    copen
endfunction

command! ToggleQuickfix call <SID>QuickfixToggle()
nnoremap <silent> <Leader>q :ToggleQuickfix<CR>
   
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" delete trailing white space on save
nmap <silent><Leader>et :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>  
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>      " vim-less map
" Alphabetically sort CSS properties in file with :SortCSS
command! SortCSS :g#\({\n\)\@<=#.,/}/sort

let g:pymode_breakpoint_key = '<Leader>b'
let g:pymode_lint_checker='pylint,pep8,mccabe,pep257'
let g:pymode_lint_ignore=''
let g:pymode_lint_config=$HOME.'/dotfiles/pylint/pylint.rc'

let g:pymode_rope_lookup_project=0
let g:pymode_rope=0
let g:pymode_rope_goto_def_newwin='new'
let g:pymode_rope_guess_project=0
let g:pymode_rope_vim_completion=1
let g:pymode_rope_always_complete_menu=1

let g:syntatic_python_pylint_exe="pylint2"
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol='⚡'
let g:syntastic_style_warning_symbol='⚡'

let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key='<Tab>'
let g:user_emmet_leader_key='<C-Z>'

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

let JSHintUpdateWriteOnly=1                                        " JavaScript

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_math=1                                          " LaTex math

" Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

" Jedi-vim
"let g:jedi#auto_initialization = 0
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#use_tabs_not_buffers = 0
"let g:jedi#use_splits_not_buffers = "left"
"let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0

let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
"let g:jedi#completions_enabled = 0
"autocmd FileType python setlocal completeopt-=preview
