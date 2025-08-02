
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>d", '"_d', {noremap=true})
vim.keymap.set("v", "<leader>d", '"_d', {noremap=true})
vim.keymap.set("n", "<leader>y", '"+y', {noremap=true})
vim.keymap.set("v", "<leader>y", '"+y', {noremap=true})
vim.keymap.set("n", "<leader>p", '"_dP', {noremap=true})


vim.api.nvim_set_keymap('v', '<leader>mk', ":m '<-2<CR>gv=gv", {})
vim.api.nvim_set_keymap('v', '<leader>mj', ":m '>+1<CR>gv=gv", {})

