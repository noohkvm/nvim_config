return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },  -- Load only when needed
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'lua', 'python', 'java', 'cpp', 'bash' }, -- Add languages yu need
      highlight = { enable = true },  -- Enable syntax highlighting
      indent = { enable = true },  -- Enable auto-indentation
      incremental_selection = { enable = true },  -- Enable incremental selection
    })
  end
}
