return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<c-\>]],
    shade_terminals = true,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    persist_mode = true,
    close_on_exit = true,
    direction = 'float',
    float_opts = {
      border = 'curved',
      winblend = 3,
      highlights = {
        border = 'Normal',
        background = 'Normal',
      },
    },
  },
}
