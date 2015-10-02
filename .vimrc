" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ruler           " Show the line and column numbers of the cursor
"set ignorecase      " Do case insensitive matching
set incsearch       " Incremental search
set autowrite       " Automatically save before commands like :next and :make
set hidden          " Use hidden buffers
set nohlsearch      " don't highlight last search matches
set cmdheight=2     " 2 lines for messages (fewer 'Press Return' messages)
set showbreak=+     " prefix wrapped lines with a + sign
set wildmenu        " use a menu for wildcard completion

set background=light

if &t_Co > 2 || has("gui_running")
    "colo darkblue

    " turn on syntax highlighting
    if has("syntax")
        syntax on

        " some settings for specific syntax files
        let c_gnu = 1
        let c_syntax_for_h = 1

        let perl_include_pod = 1
        let perl_want_scope_in_variables = 1
        let perl_extended_vars = 1
        "let perl_fold = 1
        let perl_fold_blocks = 1
        let perl_include_pod = 1
        let perl_want_scope_in_variables = 1
        let perl_extended_vars = 1
        let perl_string_as_statement = 1
        "set fdc=3
    endif
endif

" set up a comment and uncomment command
:command Comment 'a,'b s/^/#/
:command Uncomment 'a,'b s/^#//

" setup a shift and unshift
:command Shift 'a,'b s/^/     /
:command Unshift 'a,'b s/^     //

" from my old file...
set showmode
set visualbell
"set tabstop=4
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set noautoindent
autocmd BufRead *.t set syntax=perl
"set term=builtin_ansi
"set term=xterm-color
"set autoindent
set nohls
"set bg=dark
set bg=light
"autocmd BufNewFile,BufRead *.p? compiler perl
"if &t_Co > 1
"    set background=light 
"    syntax enable
"endif

