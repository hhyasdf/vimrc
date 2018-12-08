filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'powerline/powerline'
Bundle 'kien/ctrlp.vim'

Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'jiangmiao/auto-pairs'

Bundle 'vim-syntastic/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'tomasr/molokai'
Bundle 'Valloric/YouCompleteMe'
Bundle 'wesleyche/SrcExpl'
Plugin 'Raimondi/delimitMate'

"Plugin 'flazz/vim-colorschemes'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"//Plugin 'suan/vim-instant-markdown'

"//color themes
syntax enable
syntax on
set background=dark
set shell=/bin/bash

"colorscheme wargrey
colo wombat256
"kate kalt in blackbackkground
"oceandeep oceanblack oceanlight wuye woju wargrey
set ts=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set relativenumber
set cursorline
set term=screen-256color


if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
\"for simplicity," au BufReadPost * exe "normal! g'\"", is Okay.
endif   


"//markdown latex syntax open 
let g:tex_conceal = ""
let g:vim_markdown_math = 1


"//YCM setting
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0
let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_key_invoke_completion = '<C-Q>'       "触发自动补全

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"//Set CtrIP
noremap <F6> :CtrlP<CR>

"// Set F8 for tagbar
nmap <F8> :TagbarToggle<CR>

"// Set F5 for nerdtree
nmap <F5> :NERDTreeToggle<CR>

"// The swich of the Sourse Explorer
nmap <F7> :SrcExplToggle<CR>

"// Set the height of Source Explore window
let g:SrcExpl_winHeight = 16

"// Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

"// Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

"// Set "Space" key for back frome the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

"// In order to avoid conflicts, the Source Explorer should know what plugins
"// except itself are using buffers. And you need add their buffer names into
"// below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [
	\ "_Tagbar_",
	\ "NERD_tree_1"
\ ]

"// Enable/Disable the local definition searching, and note that this is not
"// guaranteed to work, the Source Explorer dosn't check the synax for now.
"// It only searches for a match with the keyword according to command 'fd'
let g:SrcExpl_searchLocalDef = 1

"// Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

"// Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
"// create/update the tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R -h .h.py   ."

"// Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F9>"

"// Set "<F3>" key for displaying the previous definition in the jump list
let g:SrcExpl_prevDefKey = "<F3>"

"// Ser "<F4>" key for displaying the next definition in the jump list
let g:SrcExpl_nextDefKey = "<F4>" 


set encoding=utf-8

filetype plugin indent on
"filetype plugin on
