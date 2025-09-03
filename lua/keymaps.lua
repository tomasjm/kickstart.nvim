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

-- LSP Keymaps
vim.keymap.set('n', '<leader>cl', function() Snacks.picker.lsp_config() end, { desc = 'Lsp Info' })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto Definition' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'References', nowait = true })
vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { desc = 'Goto Implementation' })
vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, { desc = 'Goto T[y]pe Definition' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
vim.keymap.set('n', 'K', function() return vim.lsp.buf.hover() end, { desc = 'Hover' })
vim.keymap.set('n', 'gK', function() return vim.lsp.buf.signature_help() end, { desc = 'Signature Help' })
vim.keymap.set('i', '<c-k>', function() return vim.lsp.buf.signature_help() end, { desc = 'Signature Help' })
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
vim.keymap.set({ 'n', 'v' }, '<leader>cc', vim.lsp.codelens.run, { desc = 'Run Codelens' })
vim.keymap.set('n', '<leader>cC', vim.lsp.codelens.refresh, { desc = 'Refresh & Display Codelens' })
vim.keymap.set('n', '<leader>cR', function() Snacks.rename.rename_file() end, { desc = 'Rename File' })
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename' })
vim.keymap.set('n', ']]', function() Snacks.words.jump(vim.v.count1) end, { desc = 'Next Reference' })
vim.keymap.set('n', '[[', function() Snacks.words.jump(-vim.v.count1) end, { desc = 'Prev Reference' })
vim.keymap.set('n', '<a-n>', function() Snacks.words.jump(vim.v.count1, true) end, { desc = 'Next Reference' })
vim.keymap.set('n', '<a-p>', function() Snacks.words.jump(-vim.v.count1, true) end, { desc = 'Prev Reference' })