


vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser auto_depth=true<CR>",
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>fd',
  ":lua require('telescope').extensions.file_browser.file_browser({cwd = vim.fn.expand('%:p:h')})<CR>",
  { noremap = true }
)
