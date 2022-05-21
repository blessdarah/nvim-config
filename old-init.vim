set encoding=utf-8

call plug#begin()

Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'

Plug 'puremourning/vimspector'

Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'

Plug 'chiel92/vim-autoformat'
Plug 'noahfrederick/vim-composer'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-vinegar'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'pechorin/any-jump.vim'
Plug 'justinmk/vim-sneak'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'rafi/awesome-vim-colorschemes' "For all vim color schemes

"Neovim lsp configuration
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" vim lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'nvim-telescope/telescope.nvim'


" lsp autocomplete packages
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Add space vim for session and tabs management
Plug 'vim-ctrlspace/vim-ctrlspace'

" Add auto import for javascript files
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-abolish'
Plug 'arithran/vim-delete-hidden-buffers'
Plug 'tami5/lspsaga.nvim'

call plug#end()

packadd! matchit

syntax on
filetype plugin indent on
set t_CO=256
set wrap!
set guifont=Fira\ Code:h10
set notermguicolors
set nocompatible
set showmatch
set relativenumber
set ignorecase
set mouse=a
set scrolloff=3 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=3
set hlsearch
set tabstop=4
set smarttab
set softtabstop=4 " Indent by 2 spaces when hitting tab
set shiftwidth=4 " Indent by 4 spaces when auto-indenting
set tabstop=4 " Show existing tab with 4 spaces widthet shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set cc=80
set textwidth=80
set wrapmargin=2
set ai
set foldmethod=manual
set linespace=18
set termguicolors
set background=dark
set fo=croq

" Options for vim-ctrlspace
set hidden
set encoding=utf-8

" Off tabline in favour of vim-ctrlspace
set showtabline=0

if(':GuiFont')
	set :GuiFont=Fira\ Code:h10
endif

if(':Guipopupmenu')
	set Guipopupmenu=0
endif

let g:CtrlSpaceDefaultMappingKey = "<C-space> "

let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

" End Options for vim-ctrlspace

colorscheme gruvbox
" colorscheme oceanic_material
" colorscheme gotham

let g:user_emmet_leader_key=','
let g:rainbow_active = 1
let g:airline_powerline_fonts = 1
" let g:molokai_original = 1   "for the molokai theme"

" Toggle relativenumber in normal mode
" Then maintain absolute number in insert mode
augroup toggle_relative_number
	autocmd InsertEnter * :setlocal norelativenumber
	autocmd InsertLeave * :setlocal relativenumber


	" Auto format for vim
	au BufWrite * :Autoformat


	" auto import in vim
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


	" clear default highlight after searching a string
	nmap <silent> ,c :nohlsearch<CR>
	nmap <silent> ,w :w<CR>
	nmap <silent> ,nt :NERDTreeToggle<CR>
	nmap <silent> ,nf :NERDTreeFind<CR>

	" create new lines before and after line respectively
	nmap oo o<Esc>k
	nmap OO O<Esc>j
	nmap <silent> ,e i<CR><Esc>
	nmap <silent> ,pi i<CR>


	""-------- quick search with fzf --------"
	"nmap <silent> ,s :FZF<CR>


	" git gitgutter configurations
	set signcolumn=yes

	nmap ]h <Plug>(GitGutterNextHunk) "same as default
	nmap [h <Plug>(GitGutterPrevHunk) "same as default

	nmap ghs <Plug>(GitGutterStageHunk)
	nmap ghu <Plug>(GitGutterUndoHunk)

	let g:gitgutter_sign_added = '+'
	let g:gitgutter_sign_modified = '*'
	let g:gitgutter_sign_removed = '-'
	let g:gitgutter_sign_removed_first_line = '-'
	let g:gitgutter_sign_modified_removed = '-'


	"------- Add python 3 to path for vim to see -------
	let g:python3_host_prog='C:\Users\bless\AppData\Local\Programs\Python\Python39\python.EXE'


	vnoremap (( "sc(<C-r>s)<Esc>
	vnoremap "" "sc"<C-r>s"<Esc>

	" moving to other windows mapping
	nnoremap <C-H> <C-W><C-H>
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>

	vnoremap J :m '>+1<CR>gv=gv
	vnoremap K :m '<-2<CR>gv=gv


	" TextEdit might fail if hidden is not set.
	set hidden

	" Some servers have issues with backup files, see #649.
	set nobackup
	set nowritebackup

	" Give more space for displaying messages.
	set cmdheight=2

	" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
	" delays and poor user experience.
	set updatetime=300

	" Don't pass messages to |ins-completion-menu|.
	set shortmess+=c

	" Always show the signcolumn, otherwise it would shift the text each time
	" diagnostics appear/become resolved.
	if has("patch-8.1.1564")
		" Recently vim can merge signcolumn and number column into one
		set signcolumn=number
	else
		set signcolumn=yes
	endif

	"---- ;; to exit insert mode ------
	imap ;; <Esc>

	vnoremap (( "sc(<C-r>s)<Esc>
	vnoremap "" "sc"<C-r>s"<Esc>

	" moving to other windows mapping
	nnoremap <C-H> <C-W><C-H>
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>

	vnoremap J :m '>+1<CR>gv=gv
	vnoremap K :m '<-2<CR>gv=gv
	" Some servers have issues with backup files, see #649.
	set nobackup
	set nowritebackup

	" Give more space for displaying messages.
	set cmdheight=2

	" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
	" delays and poor user experience.
	set updatetime=300

	" Don't pass messages to |ins-completion-menu|.
	set shortmess+=c

	" Always show the signcolumn, otherwise it would shift the text each time
	" diagnostics appear/become resolved.
	if has("patch-8.1.1564")
		" Recently vim can merge signcolumn and number column into one
		set signcolumn=number
	else
		set signcolumn=yes
	endif



	" ======================= LSP SAGA CONFIG =======================

	" -- or use command LspSagaFinder
	nnoremap <silent> gh :Lspsaga lsp_finder<CR>

	" -- or use command
	nnoremap <silent><leader>ca :Lspsaga code_action<CR>
	vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>


	" -- or use command
	nnoremap <silent>K :Lspsaga hover_doc<CR>

	" -- scroll down hover doc or scroll in definition preview
	nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
	" -- scroll up hover doc
	nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

	" -- show signature help
	nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
	" -- or command
	nnoremap <silent> gs :Lspsaga signature_help<CR>

	" and you also can use smart_scroll_with_saga to scroll in signature help win
	"

	"-- rename
	nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
	" -- or command
	nnoremap <silent>gr :Lspsaga rename<CR>
	" -- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`


	" -- preview definition
	nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
	" -- or use command
	nnoremap <silent> gd :Lspsaga preview_definition<CR>

	" can use smart_scroll_with_saga to scroll

	" -- show
	nnoremap <silent><leader>cd <cmd>lua
	" require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

	nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
	" -- only show diagnostic if cursor is over the area
	nnoremap <silent><leader>cc <cmd>lua
	" require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>

	" -- jump diagnostic
	nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
	nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
	" -- or use command
	nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
	nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

	" -- float terminal also you can pass the cli command in open_float_terminal function
	nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> -- or open_float_terminal('lazygit')<CR>
	tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
	" -- or use command
	nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
	tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

	highlight link LspSagaFinderSelection Search
	" or
	" highlight link LspSagaFinderSelection guifg='#ff0000' guibg='#00ff00' gui='bold'

	let g:python3_host_prog = '/opt/homebrew/bin/python3'


	" --- In lsp attach function
	lua local map = vim.api.nvim_buf_set_keymap
	map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
	map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
	map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
	map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
	map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
	map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
	map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
	map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
	map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
