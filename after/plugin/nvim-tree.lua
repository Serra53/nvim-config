require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"


  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<leader>nto', api.tree.open)
  vim.keymap.set('n', '<leader>ntc', api.tree.close)
  vim.keymap.set('n', '<leader>ntr', api.fs.rename_sub)
  vim.keymap.set('n', '<leader>ntt', api.node.open.tab)

  --fix to current file
  vim.g.nvim_tree_respect_buf_cwd = 1
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,

  update_cwd = true,

  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  ---
  diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
          hint = "",
          info = "",
          error = "",
          warning = "•"
      },
  },
}
