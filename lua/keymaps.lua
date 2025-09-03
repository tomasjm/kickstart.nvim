-- lazygit
if vim.fn.executable 'lazygit' == 1 then
  vim.keymap.set('n', '<leader>gg', function()
    Snacks.lazygit()
  end, { desc = 'Lazygit (Root Dir)' })
  vim.keymap.set('n', '<leader>gf', function()
    Snacks.picker.git_log_file()
  end, { desc = 'Git Current File History' })
  vim.keymap.set('n', '<leader>gl', function()
    Snacks.picker.git_log()
  end, { desc = 'Git Log' })
end

vim.keymap.set('n', '<leader>gb', function()
  Snacks.picker.git_log_line()
end, { desc = 'Git Blame Line' })
vim.keymap.set({ 'n', 'x' }, '<leader>gB', function()
  Snacks.gitbrowse()
end, { desc = 'Git Browse (open)' })
vim.keymap.set({ 'n', 'x' }, '<leader>gY', function()
  Snacks.gitbrowse {
    open = function(url)
      vim.fn.setreg('+', url)
    end,
    notify = false,
  }
end, { desc = 'Git Browse (copy)' })
