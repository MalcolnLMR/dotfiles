return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      --[[ things you want to change go here]]
    },
    keys = {
      { '<leader>tc', '<cmd>ToggleTerm direction=float<cr>', desc = '[T]erminal on [C]urrent dir' },
      { '<leader>th', '<cmd>ToggleTerm dir=~/<cr>', desc = '[T]erminal on [H]ome dir' },
      { '<C-q>', '<cmd>ToggleTerm direction=float<cr>' },
    },
  },
}
