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




