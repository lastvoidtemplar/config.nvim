print "Hello Sir"

require "config.lazy"

-- keymaps must end with <CR>(/r)
vim.keymap.set("n", "<space><space>x", ":source %<CR>")
-- :. the . means the current line
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x" , ":lua<CR>")
-- indent the whole file
vim.keymap.set("n", "<space>f", "gg=G<C-o>")

vim.keymap.set("n", "<space>w", "<C-w><C-w>")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

