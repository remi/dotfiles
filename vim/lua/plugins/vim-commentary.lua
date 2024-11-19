return {
  'tpope/vim-commentary',
  init = function()
    vim.keymap.set('n', '<Leader>cc', '<Plug>CommentaryLine')
    vim.keymap.set('x', '<Leader>cc', '<Plug>Commentary')
  end
}
