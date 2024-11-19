return {
  'mileszs/ack.vim',
  init = function()
    vim.g.ackprg = 'rg --no-heading --color=never --column --line-number'

    vim.api.nvim_create_user_command('Ag', function(opts)
      vim.cmd('Ack ' .. opts.args)
    end, { nargs = '*', complete = 'file' })
  end,
}
