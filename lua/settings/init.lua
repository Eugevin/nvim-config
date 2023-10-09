vim.cmd("colorscheme kanagawa-wave")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

require("lualine").setup()

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})