"Plugin manager
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
call plug#end()

"Enable line numbers
set number

"Enable indentation keeping
set autoindent

"Enable X11 Clipboard
"set clipboard=unnamedplus

"Show status line with file number
set ls=2

"Tabs
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType mk,make set noexpandtab
autocmd FileType markdown,yaml,tex set tabstop=2 | set shiftwidth=2

"Flag trailing whitespace for all files
"match Error /\s\+$/

"Fix backspace?
"nmap <Ctrl-V><Del> x
"imap <Ctrl-V><Del> <Ctrl-V><Esc>lxi

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"Syntax highlighting
syntax on
colorscheme challenger_deep
