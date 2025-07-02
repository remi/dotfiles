local opts = { noremap = true, silent = true }

-- Buffers
vim.keymap.set("n", "<Leader>!d", ":bdelete!<CR>", opts)
vim.keymap.set("n", "<Leader>d", ":bdelete<CR>", opts)
vim.keymap.set("n", "<Leader>D", ":bufdo bdelete!<CR>", opts)
vim.keymap.set("n", "<Leader>w", ":w!<CR>", opts)

-- Easy new lines
vim.keymap.set("n", "<M-o>", "mo<Esc>o<Esc>k`o", opts)
vim.keymap.set("n", "<M-S-o>", "mo<Esc>O<Esc>j`o", opts)
vim.keymap.set("n", "K", "<Esc>i<CR><Esc><Esc>", opts)

-- Mark navigation
vim.keymap.set("n", "'", "`", opts)
vim.keymap.set("v", "'", "`", opts)
vim.keymap.set("", "g'", "g`", opts)
vim.keymap.set("v", "g'", "g`", opts)
vim.keymap.set("n", "â", "^a", opts)
vim.keymap.set("n", "î", "^i", opts)
vim.keymap.set("n", "ô", "^o", opts)

-- Remap Enter and Backspace in visual mode
vim.keymap.set("v", "<CR>", "<NOP>", opts)
vim.keymap.set("v", "<BS>", "dk$", opts)

-- Split navigation
vim.keymap.set("n", "<C-c>", "<C-W>c<CR>", opts)
vim.keymap.set("n", "<C-K>", "<C-W><C-K>", opts)
vim.keymap.set("n", "<C-J>", "<C-W><C-J>", opts)
vim.keymap.set("n", "<C-H>", "<C-W><C-H>", opts)
vim.keymap.set("n", "<C-L>", "<C-W><C-L>", opts)

-- CTRL-T for tags (Canadian keyboard optimization)
vim.keymap.set("n", "<C-T>", "<C-]>", opts)

-- CTRL-P for jumping to newer cursor position (because <C-I> / <Tab> is used for completion)
-- <https://github.com/tmux/tmux/issues/2705>
vim.keymap.set("n", "<C-P>", "<C-I>", opts)

-- Buffer navigation
vim.keymap.set("n", ">", ":bnext<CR>", opts)
vim.keymap.set("n", "<", ":bprevious<CR>", opts)

-- Insert current date
vim.keymap.set("i", "<M-d>", '<C-R>=strftime("%Y%m%d")<CR>', opts)
vim.keymap.set("i", "<M-D>", '<C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>', opts)

-- Duplicate line
vim.keymap.set("n", "<M-d>", "m'yyP`'k", opts)
vim.keymap.set("v", "<M-d>", "m'y'>p`'", opts)

-- Select text characters in current line
vim.keymap.set("n", "<M-v>", "^v$h", opts)

-- Clear search highlighting
vim.keymap.set("n", "<Space>", ":silent noh<Bar>echo<CR>", opts)

-- Change working directory to current file
vim.keymap.set("n", "èè", ":lcd %:p:h<CR>", opts)

-- Alt-4 for end of line (except last character)
vim.keymap.set("v", "<M-4>", "$h", opts)

-- Disable ex mode
vim.keymap.set("n", "Q", ':echo "BOOYA! Ex mode is disabled."<CR>', opts)

-- Disable arrow keys
local arrows = { "<Left>", "<Up>", "<Down>", "<Right>" }
for _, key in ipairs(arrows) do
  vim.keymap.set("i", key, "<NOP>", opts)
  vim.keymap.set("n", key, "<NOP>", opts)
end
