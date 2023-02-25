vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>s", vim.cmd.w)

-- Custom mapping
--  previous buffer
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")
--  next buffer
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
--  open empty buffer
vim.keymap.set("n", "<leader>bN", ":enew<CR>")
--  close a buffer
vim.keymap.set("n", "<leader>bk", ":bd<CR>")
--  force close a buffer
vim.keymap.set("n", "<leader>bK", ":bd!<CR>")
--  Paste without cleanup paste buffer (paste register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- insert current date time
-- e.g. 2021-11-17 19:19:26 +0800
vim.keymap.set("n", "<F5>", "\"=strftime(\"%Y-%m-%d %H:%M:%S %z\")<CR>P")
vim.keymap.set("i", "<F5>", "<C-R>=strftime(\"%Y-%m-%d %H:%M:%S %z\")<CR>")

-- Select and moving around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Fix cursor position when doing J
vim.keymap.set("n", "J", "mzJ`z")

-- Fix cursor position to center when doing page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Fix cursor position to center when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Make ctrl-C same function as Ecs
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Quick change selected text
vim.keymap.set("n", "<F6>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
