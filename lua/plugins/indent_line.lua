return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
    init = function()
      local palette = require 'catppuccin.palettes.macchiato'
      local hooks = require 'ibl.hooks'

      local highlight = {
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
        '8',
      }

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, '1', { fg = palette.pink })
        vim.api.nvim_set_hl(0, '2', { fg = palette.mauve })
        vim.api.nvim_set_hl(0, '3', { fg = palette.red })
        vim.api.nvim_set_hl(0, '4', { fg = palette.maroon })
        vim.api.nvim_set_hl(0, '5', { fg = palette.peach })
        vim.api.nvim_set_hl(0, '6', { fg = palette.yellow })
        vim.api.nvim_set_hl(0, '7', { fg = palette.green })
        vim.api.nvim_set_hl(0, '8', { fg = palette.rosewater })
      end)

      require('ibl').setup {
        indent = { highlight = highlight },
        scope = {
          enabled = false,
        },
      }
    end,
  },
}
