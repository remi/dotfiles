vim.env.LC_ALL = "en_CA.UTF-8"

vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.mouse = 'n'
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.whichwrap:append('h,l,~,[,],<,>')
vim.opt.scrolloff = 4
vim.opt.laststatus = 3
vim.opt.autoread = false
vim.opt.title = true
vim.opt.showmatch = true
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.cindent = true
vim.opt.showtabline = 0
vim.opt.hlsearch = true
vim.opt.visualbell = false
vim.opt.modelines = 10
vim.opt.eol = false
vim.opt.wildmenu = true
vim.opt.wildmode = 'full'
vim.opt.switchbuf = 'useopen'
vim.opt.backspace = 'indent,eol,start'
vim.opt.tabpagemax = 50
vim.opt.iskeyword:append('-,?,!')
vim.opt.hidden = true
vim.opt.gdefault = true
vim.opt.shell = 'zsh'
vim.opt.clipboard = 'unnamed'
vim.opt.startofline = false
vim.opt.lazyredraw = true
vim.opt.inccommand = 'nosplit'
vim.opt.wrap = false
vim.opt.sidescroll = 4
vim.opt.sidescrolloff = 14
vim.opt.listchars = 'precedes:←,extends:→,nbsp:◊,trail:⠿,eol: ,tab:●·'
vim.opt.list = true
vim.opt.titlestring = vim.fn.hostname()
vim.opt.title = true

vim.opt.backup = true
vim.opt.swapfile = true

local vimlocal = vim.fn.expand('$HOME') .. '/.nvim-local'

vim.opt.shadafile = vimlocal .. '/info'
vim.opt.shada = "'50,<1000,s100,h"

vim.opt.backupdir = vimlocal .. '/backup'
vim.opt.directory = vimlocal .. '/swap'
vim.opt.undofile = true
vim.opt.undodir = vimlocal .. '/undo'

local function ensure_dir(dir)
  if vim.fn.isdirectory(dir) == 0 then
    vim.fn.mkdir(dir, "p")
  end
end

ensure_dir(vim.opt.backupdir:get()[1])
ensure_dir(vim.opt.directory:get()[1])
ensure_dir(vim.opt.undodir:get()[1])
