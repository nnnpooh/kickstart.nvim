return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true

      vim.keymap.set('n', '<leader>ft', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle nvim-tree' })

      require('nvim-tree').setup {}
    end,
  },
}
