local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>s", vim.cmd.w)

-- Custom mapping
--  previous buffer
keymap.set("n", "<leader>bp", ":bprevious<CR>")
--  next buffer
keymap.set("n", "<leader>bn", ":bnext<CR>")
--  open empty buffer
keymap.set("n", "<leader>bN", ":enew<CR>")
--  close a buffer
keymap.set("n", "<leader>bk", ":bd<CR>")
--  force close a buffer
keymap.set("n", "<leader>bK", ":bd!<CR>")
--  Paste without cleanup paste buffer (paste register
keymap.set("x", "<leader>p", "\"_dP")

-- insert current date time
-- e.g. 2021-11-17 19:19:26 +0800
keymap.set("n", "<F5>", "\"=strftime(\"%Y-%m-%d %H:%M:%S %z\")<CR>P")
keymap.set("i", "<F5>", "<C-R>=strftime(\"%Y-%m-%d %H:%M:%S %z\")<CR>")

-- Select and moving around
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Fix cursor position when doing J
keymap.set("n", "J", "mzJ`z")

-- Fix cursor position to center when doing page jumping
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Fix cursor position to center when searching
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Make ctrl-C same function as Ecs
keymap.set("i", "<C-c>", "<Esc>")

-- Quick change selected text
keymap.set("n", "<F6>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Split Screen
keymap.set("n", "<leader>wv", "<C-w>v")
keymap.set("n", "<leader>ws", "<C-w>s")
keymap.set("n", "<leader>wc", "<C-w>c")
keymap.set("n", "<leader>ww", "<C-w>w")

-- Move Window
keymap.set("n", "<leader>wh", "<C-w>h")
keymap.set("n", "<leader>wk", "<C-w>k")
keymap.set("n", "<leader>wj", "<C-w>j")
keymap.set("n", "<leader>wl", "<C-w>l")

-- Resize Window
keymap.set("n", "<leader>w<left>", "<C-w><")
keymap.set("n", "<leader>w<right>", "<C-w>>")
keymap.set("n", "<leader>w<up>", "<C-w>+")
keymap.set("n", "<leader>w<down>", "<C-w>-")

-- Delete a word backwards
keymap.set("n", "<leader>dw", "vb_d")

-- Select all
keymap.set("n", "<leader>a", "gg<S-v>G")

-- New Tab
keymap.set("n", "<leader>tn", ":tabedit<Return>", opts)
keymap.set("n", "<leader>tw", ":tabclose<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprevious<Return>", opts)

-- Diagnostics
keymap.set("n", "<leader>j", function()
    vim.diagnostic.goto_next()
end)
