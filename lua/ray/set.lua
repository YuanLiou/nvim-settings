vim.g.mapleader = " "
-- 自訂縮排 (Tab) 位元數
local set = vim.opt 

-- 設定字體樣式及大小。
vim.o.guifont = "Monaco:h16"

-- set options
-- show divider at column 100
set.colorcolumn = "100"

-- width of tab character
set.tabstop = 4
-- fine tunes the amount of whitespace to be added
set.softtabstop = 4
-- determines the amount of whitespace to add in normal mode
set.shiftwidth = 4

set.expandtab = true
set.smartindent = true

-- Line Number
set.nu = true
set.relativenumber = true

-- Show search target keyword
set.hlsearch = true

-- Enable Smartcase，只有大寫搜尋大寫
set.smartcase = true

-- 搜尋不分大小寫。
set.ignorecase = true

-- Incremental search
set.incsearch = true

-- Term GUI Color
set.termguicolors = true

-- 捲動時保留底下 6 行。
set.scrolloff = 6

-- show the matching part of pairs [] {} and () 
set.showmatch = true

--  高亮當前行 (水平)。
set.cursorline = true

-- 自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式 :set paste 再進行貼上。
set.ai = true

-- 啟用暗色背景模式。 
-- set.background = "dark"

-- 文字編碼加入 utf8
set.enc = "utf8"

-- 只在 Normal 以及 Visual 模式使用滑鼠，也就是取消 Insert 模式的滑鼠，
set.mouse = "nv"

-- 支援多檔案開啟，會 Hide 在背景
set.hidden = true

-- 字數過長時換行。
set.wrap = true

-- 關閉嗶嗶聲。
set.belloff = "all"

-- 自動切換當前目錄
set.autochdir = true

-- 摺疊 Folding。
set.foldenable = true
set.foldmethod = "indent"
set.foldcolumn = "1"
set.foldlevel =5

