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
  "rebelot/kanagawa.nvim",
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.3",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  {
    "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  "mhinz/vim-signify",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip"
})

require("plugins.p-treesitter")
require("plugins.p-neotree")
require("plugins.p-mason")
require("plugins.p-lsp")
require("plugins.p-cmp")

