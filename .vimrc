set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set conceallevel=2
" Displays correct vim encondings on for emojis (win11)
set encoding=utf-8

" Disable Vim Beep/GUI flashing (win11)
set vb t_vb=

" Display command that is being typed
set showcmd

" Search folders recursively to provide tab completion
set path+=**

" Display matching files when using tab
set wildmenu

" Set bar and block cursors on diffrent modes
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Set autosave when editing different files
set autowrite

" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

" Editor
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'

" File manager
Plug 'preservim/nerdtree'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'masukomi/vim-markdown-folding'

" Lightweight wiki for Vim
Plug 'lervag/wiki.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Show hidden files on NERDTree
let NERDTreeShowHidden=1

" Nord theme config
let g:nord_bold_vertical_split_line = 1

" Italics and syntax enabled for nord theme
let g:nord_italic = 1

" Syntax highlighting enabled
syntax enable

" Settings for vimwiki
let g:wiki_root = '~/notes'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'

" Short links for tpope/vim-markdown plugin
autocmd Filetype markdown,liquid,text
	\ syn region markdownLink matchgroup=markdownLinkDelimiter
	\ start="(" end=")" keepend contained conceal contains=markdownUrl
autocmd Filetype markdown,liquid,text
	\ syn match markdownExt /{[.:#][^}]*}/ conceal contains=ALL

" Initiate nvim with file tree open
autocmd VimEnter * NERDTree | wincmd p

colorscheme nord


" Remaps
" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remap folding
nnoremap f za
