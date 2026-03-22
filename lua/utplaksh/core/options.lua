-- making global variables
local opt = vim.opt

-- This cmd just makes netrw look like tree
vim.cmd("let g:netrw_liststyle = 3")

-- Adding line no.
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expands tab to sapces
opt.autoindent = true -- copy indent from current line when starting new one

-- disable line mapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed search in your search, it will have case-sensitivity

-- cursorline 
opt.cursorline = true

-- turn on terminal-gui-color for tokyonight colorscheme to work
-- (I am using ghostty terminal)
opt.termguicolors = true
opt.background = "dark" -- allways use dark colorscheme
opt.signcolumn = "yes" --  show sign column so that text doesn't shift

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

--split windows
opt.splitright = true -- split virtical window to right
opt.splitbelow = true -- split hozontal wiondow to the bottom

-- Adding option for code wraping
opt.wrap = false      -- Start with wrap off (default)
opt.linebreak = true  -- Don't break words in the middle
opt.breakindent = true -- Indent wrapped lines to match the start of the line

