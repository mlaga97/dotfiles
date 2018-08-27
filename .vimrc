" Assorted BS
set nocompatible
source $VIMRUNTIME/defaults.vim

" Various line stuff
set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent

" Highlight ES6 template strings
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

" Enable JSDocs
let g:javascript_plugin_jsdoc = 1

" Folding stuff
set foldmethod=indent
set nofoldenable

" GitGutter stuff
set updatetime=100

set background=dark
set t_Co=256
