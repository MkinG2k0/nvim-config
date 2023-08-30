vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

--vim.keymap.set( 'n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree left toggle<CR>')
vim.keymap.set('n', '<leader>eg', ':Neotree float git_status<CR>')

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {}
  end,
}
