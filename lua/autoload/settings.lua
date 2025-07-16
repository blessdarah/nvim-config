local opt = vim.opt -- for conciseness

opt.display = "lastline"
opt.hidden = true
opt.syntax = "on"

-- Line numbers
opt.relativenumber = true
opt.number = true

-- column width and wrap column
opt.colorcolumn = "80"
opt.wrapmargin = 80

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Line wrapping
opt.wrap = false
-- opt.linebreak = true
-- opt.list = true
opt.textwidth = 126

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- cursor shape and appearance
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.smartcase = true

-- split windows
opt.splitright = true
opt.splitbelow = true

--backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- opt.iskeyword:append("-") -- Assume words with dash(-) to be a single word
--
vim.filetype.add({
	pattern = {
		[".*%.blade%.php"] = "blade",
	},
})

-- configure golang formating with gopls
vim.g.go_fmt_command = "golines"
vim.g.go_fmt_options = {
	golines = "-m 80",
}

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})
