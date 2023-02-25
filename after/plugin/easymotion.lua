-- EasyMotion (AceJump)
-- "<Leader>f{char} to move to {char}
vim.keymap.set("n", "<Leader>;", "<Plug>(easymotion-bd-f)", {silent = true})
vim.keymap.set("n", "<Leader>;", "<Plug>(easymotion-overwin-f)")
--
-- s{char}{char} to move to {char}{char}
vim.keymap.set("n", "<Leader>:", "<Plug>(easymotion-overwin-f2)")
