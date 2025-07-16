return {
  'github/copilot.vim',
  event = 'InsertEnter',
  config = function()
    -- Disable default Tab mapping
    vim.g.copilot_no_tab_map = true

    -- Enable Copilot for specific filetypes
    vim.g.copilot_filetypes = {
      ['*'] = false,
      python = true,
      lua = true,
      javascript = true,
      typescript = true,
      rust = true,
      go = true,
      java = true,
      c = true,
      cpp = true,
      sh = true,
      yaml = true,
      json = true,
      vim = true,
      groovy = true,
      markdown = true,
      html = true,
      css = true,
      sql = true,
      bash = true,
      dockerfile = true,
    }

    -- Alt/Meta key mappings (home row friendly)

    -- Accept entire suggestion: Alt+J
    vim.keymap.set('i', '<M-j>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })

    -- Accept one word: Alt+L (right pinky, or Alt+W for "word")
    vim.keymap.set('i', '<M-l>', 'copilot#AcceptWord()', {
      expr = true,
      replace_keycodes = false,
    })

    -- Alternative: Alt+W for "word" (more mnemonic)
    -- vim.keymap.set('i', '<M-w>', 'copilot#AcceptWord()', {
    --   expr = true,
    --   replace_keycodes = false
    -- })

    -- Next suggestion: Alt+K
    vim.keymap.set('i', '<M-k>', '<Plug>(copilot-next)')

    -- Previous suggestion: Alt+H
    vim.keymap.set('i', '<M-h>', '<Plug>(copilot-previous)')

    -- Dismiss: Alt+D (left middle finger)
    vim.keymap.set('i', '<M-d>', '<Plug>(copilot-dismiss)')

    -- Optional: Accept line by line with Alt+Right arrow
    -- vim.keymap.set('i', '<M-Right>', 'copilot#AcceptLine()', {
    --   expr = true,
    --   replace_keycodes = false
    -- })

    -- Optional: Copilot panel mappings
    vim.keymap.set('n', '<leader>cp', ':Copilot panel<CR>', { desc = 'Open Copilot panel' })
    vim.keymap.set('n', '<leader>cs', ':Copilot status<CR>', { desc = 'Copilot status' })
    vim.keymap.set('n', '<leader>ce', ':Copilot enable<CR>', { desc = 'Enable Copilot' })
    vim.keymap.set('n', '<leader>cd', ':Copilot disable<CR>', { desc = 'Disable Copilot' })
  end,
}
