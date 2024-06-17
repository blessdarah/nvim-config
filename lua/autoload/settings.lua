local opt = vim.opt -- for conciseness

opt.display = "lastline"
opt.hidden = true
opt.syntax = "on"
-- Line numbers
opt.relativenumber = true
opt.number = true

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
