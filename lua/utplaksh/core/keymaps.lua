-- adding leader key
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n","<leader><ESC>",":nohl<CR>",{desc = "Clear search highlight"})
