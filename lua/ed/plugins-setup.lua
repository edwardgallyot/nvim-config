-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    },
    -- Packer can manage itself
    "wbthomason/packer.nvim",

    -- commenting 
    "numToStr/Comment.nvim",

    --icons
    "kyazdani42/nvim-web-devicons",
    -- Dependencies for telescope 
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.4',
        dependencies = { "nvim-lua/plenary.nvim", }
    },

    -- sudo stuff
    "lambdalisue/vim-suda",

    -- auto completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",

    -- lsp icons
    "onsails/lspkind.nvim",

    -- snippets
    "rafamadriz/friendly-snippets",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    -- lsp manager
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    -- configure lsp servers
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",

    -- nvim-treesitter
    "nvim-treesitter/nvim-treesitter",

    -- auto closing
    "windwp/nvim-autopairs",

    -- git signs
    "lewis6991/gitsigns.nvim",

    -- inlay hints overall
    "lvimuser/lsp-inlayhints.nvim",

    -- base 16 colors
    "RRethy/nvim-base16",
    -- clangd extensions for C++
    "p00f/clangd_extensions.nvim",

    -- undo tree
    "mbbill/undotree",
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = {  },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
