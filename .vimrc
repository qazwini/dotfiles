syntax on

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
