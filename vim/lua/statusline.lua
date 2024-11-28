return {
  setup = function()
    vim.opt.statusline = table.concat({
      '%#StatusLine#',
      '',
      '%1* ',
      '%{%v:lua.require("statusline").get_name()%}',
      ' %3*',
      '%7*%{%v:lua.require("statusline").get_modified()%}%3*',
      '%5*%{%v:lua.require("statusline").get_help()%}%3*',
      '%6*%{%v:lua.require("statusline").get_readonly()%}%3*',
      '%=',
      'c:%4*%c  ',
      '%3*l:%4*%l  ',
      '%3*lc:%4*%L ',
    }, '')
  end,

  get_modified = function()
    if not(vim.fn.expand('%:t') == '') and vim.bo.modified then
      return ' (modified) '
    else
      return ' '
    end
  end,

  get_help = function() return vim.bo.buftype == 'help' and ' (help) ' or '' end,
  get_readonly = function() return vim.bo.readonly and ' (read-only) ' or ' ' end,

  get_name = function()
    if vim.fn.expand('%:t') == '' then return '<none>' end
    return vim.fn.expand('%')
  end
}
