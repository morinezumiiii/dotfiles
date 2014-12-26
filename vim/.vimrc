if has('vim_starting')
  set nocompatible " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'

NeoBundle 'scrooloose/nerdtree'

"NeoBundle 'tpope/vim-fugitive'

NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-surround'

NeoBundle 'tomtom/tcomment_vim'

NeoBundle 'nathanaelkane/vim-indent-guides'

NeoBundle 'vim-scripts/AnsiEsc.vim'

NeoBundle 'bronson/vim-trailing-whitespace'

NeoBundle 'w0ng/vim-hybrid'

NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

NeoBundle 'elzr/vim-json'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'digitaltoad/vim-jade'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set tags=~/.tags
set noswapfile
set ruler
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"set statusline+=%{fugitive#statusline()}
set title
set wildmenu
set showcmd
set backupdir=$HOME/.vimbackup
set browsedir=buffer
set smartcase
set hlsearch
set background=dark
set expandtab
set incsearch
set hidden
set list
set listchars=tab:>\ ,extends:<
set number
set showmatch
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set whichwrap=b,s,h,l,<,>,[,]
syntax on
colorscheme hybrid
highlight LineNr ctermfg=darkyellow

g:previm_open_cmd
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
