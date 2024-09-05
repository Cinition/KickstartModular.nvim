return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    keywords = {
      NOTE = { icon = ' ', color = 'info', alt = { 'INFO' } },
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    highlight = {
      pattern = [[.*<(KEYWORDS)\s.*]], -- ripgrep regex
      keyword = 'fg',
      after = 'fg',
    },
    search = {
      pattern = [[\b(KEYWORDS)\s]], -- ripgrep regex
    },
  },
}
