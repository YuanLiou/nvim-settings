vim.g.mapleader = " "

local function gh(repo)
    return "https://github.com/" .. repo
end

vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(event)
        if event.data.spec.name ~= "nvim-treesitter" then
            return
        end

        if event.data.kind ~= "install" and event.data.kind ~= "update" then
            return
        end

        vim.schedule(function()
            pcall(vim.cmd, "TSUpdate")
        end)
    end,
})

vim.pack.add({
    { src = gh("nvim-lua/plenary.nvim") },
    { src = gh("nvim-telescope/telescope.nvim") },
    { src = gh("rose-pine/neovim"), name = "rose-pine" },
    { src = gh("nvim-treesitter/nvim-treesitter"), version = "master" },
    { src = gh("github/copilot.vim") },
    { src = gh("nvim-treesitter/playground") },
    { src = gh("mbbill/undotree") },
    { src = gh("tpope/vim-fugitive") },
    { src = gh("easymotion/vim-easymotion") },
    { src = gh("gelguy/wilder.nvim") },
    { src = gh("nvim-tree/nvim-tree.lua") },
    { src = gh("nvim-tree/nvim-web-devicons") },
    { src = gh("udalov/kotlin-vim") },
    { src = gh("christoomey/vim-tmux-navigator") },
    { src = gh("VonHeikemen/lsp-zero.nvim"), version = "v3.x" },
    { src = gh("neovim/nvim-lspconfig") },
    { src = gh("williamboman/mason.nvim") },
    { src = gh("williamboman/mason-lspconfig.nvim") },
    { src = gh("hrsh7th/nvim-cmp") },
    { src = gh("hrsh7th/cmp-nvim-lsp") },
    { src = gh("hrsh7th/cmp-buffer") },
    { src = gh("hrsh7th/cmp-path") },
    { src = gh("saadparwaiz1/cmp_luasnip") },
    { src = gh("hrsh7th/cmp-nvim-lua") },
    { src = gh("L3MON4D3/LuaSnip") },
    { src = gh("rafamadriz/friendly-snippets") },
}, { confirm = false })
