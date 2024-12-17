vim.opt_local.shiftwidth = 2
vim.opt_local.number = true

-- example to change using treesitter, change the color of the builtin lua functions
vim.cmd "hi @lsp.typemod.function.defaultLibrary.lua guifg=pink"
-- vim.cmd "hi @lsp.typemod.variable.global.lua guifg=yellow"
