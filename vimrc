syntax on

set shiftwidth=2                            " size of an 'indent'
set tabstop=2                               " number of visual spaces per TAB
set softtabstop=2                           " number of spaces in tab when editing
set expandtab                               " tabs are spaces

set number                                  " show line numbers

set showcmd                                 " show command in bottom bar

set wildmenu                                " visual autocomplete for command menu
set showmatch                               " highlight matching [{()}]

set incsearch                               " search as characters are entered
set hlsearch                                " highlight matches


""""""""""""""""""""""""""""""""""""""""""""
" Enabling pathogen
""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect() 


au BufNewFile,BufRead *BUILD* setf python   " enable default Python syntax for BUILD files

""""""""""""""""""""""""""""""""""""""""""""
" Enabling Python code completion
""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on                          " enable filetype plugins
let g:pydiction_location = '/Users/tzhou/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3

" complete menu
hi Pmenu       ctermfg=green  ctermbg=black guifg=#66D9EF  guibg=#000000
hi PmenuSel    ctermfg=green  ctermbg=black                guibg=#808080
hi PmenuSbar                                               guibg=#080808
hi PmenuThumb                               guifg=#66D9EF

" Enable :e %%/ to expand the current path
cabbr <expr> %% expand('%:p:h')
