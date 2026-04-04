-- Folding configuration using Treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldenable = true
vim.opt.fillchars = { fold = " ", foldopen = "󱁔", foldsep = " ", foldclose = "󱁓" }
