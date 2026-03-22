-- adding leader key
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n","<leader><ESC>",":nohl<CR>",{desc = "Clear search highlight"})

-- window management
keymap.set("n","<A-w>v","<C-w>v",{desc = "Split window vertically"}) 
keymap.set("n","<A-w>e","<C-w>=",{desc = "Make split equal size"}) 
keymap.set("n","<A-w>q","<C-w>q",{desc = "Close current split"}) 

keymap.set("n","<A-t>o",":tabnew<CR>",{desc = "Open new tab"}) 
keymap.set("n","<A-t>q",":tabclose<CR>",{desc = "Close current tab"}) 
keymap.set("n","<A-t>n",":tabn<CR>",{desc = "Go to next tab"}) 
keymap.set("n","<A-t>p",":tabp<CR>",{desc = "Go to previous tab"}) 
