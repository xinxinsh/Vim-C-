"let Tlist_Auto_Open=1

set sw=2

"set foldmethod=indent
"set foldlevel=1

let Tlist_Exit_OnlyWindow = 1

let Tlist_Show_One_File = 1

let Tlist_Use_Right_Window = 1

let Tlist_File_Fold_Auto_Close=1


"let Tlist_Use_Horiz_Window=1

"map <F8> ctags -R --languages=javascript,java,python<CR>
nmap <F8> :TlistToggle<CR>

nmap <F10> :NERDTreeToggle<CR>

nmap = zo
nmap == zO
nmap - zc
nmap -- zC

 

set nocompatible

filetype off
set nu

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'

Plugin 'taglist.vim'

Plugin 'townk/vim-autoclose'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'tomasr/molokai'

"Plugin 'c.vim'

Plugin 'nvie/vim-flake8'

Plugin 'kien/ctrlp.vim'

Plugin 'bling/vim-airline'

Plugin 'Valloric/YouCompleteMe'
"
"Plugin 'Rip-Rip/clang_complete'

call vundle#end()

filetype plugin indent on

 

"autocmd vimenter * NERDTree

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:ctrlp_by_filename = 1

let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:15,results:15'

let g:ctrlp_max_files = 0

let g:ctrlp_use_caching = 1

let g:ctrlp_open_multiple_files = 'tj'

syntax enable

set background=dark

colorscheme solarized

 

let g:ctrlp_regexp = 1

"------------------ YouCompleteMe -------------------
" Linux vim && NeoVim Using YouCompleteMe
let g:ycm_server_python_interpreter="/usr/bin/python"
let g:clang_library_path="/usr/local/opt/llvm/lib/"
let g:deoplete#enable_at_startup=1
let g:ycm_auto_trigger = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 9999
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_max_diagnostics_to_display=16
let g:ycm_disable_for_files_larger_than_kb = 50000
let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<C-k>']
let g:ycm_filetype_blacklist = {
			\ 'tagbar' : 1,
			\ 'qf' : 1,
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'unite' : 1,
			\ 'text' : 1,
			\ 'vimwiki' : 1,
			\ 'pandoc' : 1,
			\ 'infolog' : 1,
			\ 'mail' : 1,
			\ 'mundo': 1,
			\ 'fzf': 1,
			\ 'ctrlp' : 1
			\}

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
" Go to Definition variable
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
