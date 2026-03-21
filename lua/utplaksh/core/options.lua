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
