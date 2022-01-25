"Plugin manager
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
call plug#end()

"Enable line numbers
set number

"Enable indentation keeping
set autoindent

"tabedit list
set wildmenu

"Mouse
set mouse=a

"Enable X11 Clipboard
set clipboard=unnamed

"Search
set hlsearch
set incsearch
set ignorecase

"Show status line with file number
set ls=2

"Cursor line
"set cursorline

" Hide '-- INSERT --'
set noshowmode

"Tabs
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType mk,make set noexpandtab
autocmd FileType markdown,yaml,tex,css set tabstop=2 | set shiftwidth=2

"Flag trailing whitespace for all files
"match Error /\s\+$/

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"  if (has("nvim"))
"    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif

"if has("nvim")
"    set signcolumn=number
"endif
set signcolumn=no
"inoremap <silent><expr> <c-space> coc#refresh()

""""""""AUTOCOMPLETE"""""""""

"Space confirms autocomplete
"Original https://www.reddit.com/r/vim/comments/numbf7/how_can_i_disable_autoselectandcomplete_for_coc/
function! EnterSelect()
    "If the popup is visible and an option is not selected
    if pumvisible() && complete_info()["selected"] == -1
        return "\<C-y>\<CR>"

    "If the pum is visible and an option is selected
    elseif pumvisible()
        return coc#_select_confirm()

    "If the pum is not visible
    else
        return "\<C-g>u\<CR>"
    endif
endfunction
inoremap <expr> <cr> EnterSelect()

"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"let g:ycm_key_list_select_completion = ['<TAB>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>']
"let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

inoremap <expr> <Up> pumvisible() ? "\<C-y>\<Up>" : "\<Up>"
inoremap <expr> <Down> pumvisible() ? "\<C-y>\<Down>" : "\<Down>"


"Use Tab and Shift+Tab to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>" 

"Close the preview window when completion is done
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1

autocmd FileType markdown,txt let b:coc_suggest_disable = 1

"Annoying SQL error
let g:omni_sql_no_default_maps = 1

""""""""""THEME""""""""""""

"Syntax highlighting
syntax on
colorscheme challenger_deep
"let g:challenger_deep_termcolors = 256

"Popup menu colors
hi Pmenu ctermbg=236 ctermfg=14
hi PmenuSel ctermbg=8

"Lightline config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"""""""""""""""""""""""""""

":h keycodes gives meanings of keys
