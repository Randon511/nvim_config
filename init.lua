require("randon")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"nvim-lua/plenary.nvim", name="Plenary"},
    {"catppuccin/nvim", name = "catppuccin", priority = 1000},
    {"ThePrimeagen/harpoon", name = "Harpoon"},
    {"mbbill/undotree", name = "UndoTree"},
    {"folke/todo-comments.nvim"},
    {'nvim-telescope/telescope.nvim', tag = '0.1.4'},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'}
})
