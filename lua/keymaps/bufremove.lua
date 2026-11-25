vim.keymap.set('n', '<leader>x', function()
  require('mini.bufremove').delete(0, false)
end, { desc = 'Delete buffer without closing window' })

vim.keymap.set('n', '<leader>X', function()
  require('mini.bufremove').delete(0, true)
end, { desc = 'Force delete buffer discarding changes without closing window' })
