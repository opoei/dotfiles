syntax on 
filetype plugin on
filetype indent on
set termguicolors
set background=dark
set t_Co=256
set number
set hlsearch
set ic
set mouse=a
set clipboard+=unnamed
set splitright
set splitbelow
set foldcolumn=1
set foldlevel=2
set undofile
set hidden
let mapleader=" "
nnoremap <leader>n :bn <cr>
nnoremap <leader>p :bp <cr>
"TabStop : number of spaces == a tab
"ShiftWidth : number of spaces == a shift (<< or >>)
"ExpandTab : Tell vim to turn tab into spaces
"because our great leader Guido Von Rossam says to use spaces
set ts=4 sw=4 et
autocmd Filetype javascript setlocal ts=2 sw=2 et
"Plugins go here
call plug#begin('~/.vim/plugged')
"QOL plugins go here
Plug 'scrooloose/nerdtree'
Plug 'moll/vim-bbye'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-startify'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'raimondi/delimitmate'
Plug 'vim-scripts/restore_view.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

"Completion goes here
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript' "javascript

"Plug 'roxma/nvim-completion-manager'

"pretty colors go here
Plug 'dracula/vim'
Plug 'dim13/smyck.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'

"Improved Syntax highlighting
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
call plug#end()

"Plugin Configs go here
colorscheme gruvbox 
nnoremap <leader>d :Bdelete <cr>
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:rooter_patterns = ['.git/']
autocmd BufWinEnter * :Rooter

"indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
"FZF
nnoremap <leader>f :Files <CR>
nnoremap <leader>b ::Buffers <CR>
nnoremap <leader>l :Lines <CR>
nnoremap <leader>a :Ag <CR>
"ag
let g:ackprg = 'ag --vimgrep'

"function Search(string) 
"  let saved_shellpipe = &shellpipe
"  let &shellpipe = '>'
"  try
"    execute 'Ack!' shellescape(a:string, 1)
"  finally
"    let &shellpipe = saved_shellpipe
"  endtry
"endfunction
"nnoremap <leader>a :call Search("")<left><left>

" Use deoplete.
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <C-B> <C-W>

call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

let g:startify_change_to_vcs_root = 1
let g:startify_list_order = [
    \ ['   Most recently used files:'],
    \ 'files',
    \ ['   Most recently used files in the current directory:'],
    \ 'dir',
    \ ['   Sessions:'],
    \ 'sessions',
    \]

" Stop opening buffers in nerdtree damnit.
"augroup NerdPrevention
"    autocmd!
"    autocmd CmdlineEnter : if &filetype == 'nerdtree' | execute 'wincmd p' | endif
"augroup END

