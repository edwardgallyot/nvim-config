return require('packer').startup(function(use)

    -- treee
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    -- Packer can manage itself
    use ("wbthomason/packer.nvim")

    -- commenting 
    use("numToStr/Comment.nvim")

    --icons
    use("kyazdani42/nvim-web-devicons")
   
    -- Dependencies for telescope 
    use{
        "nvim-telescope/telescope.nvim", tag = '0.1.4',
        requires = { { "nvim-lua/plenary.nvim" } }
    } 

    -- auto completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- lsp icons
    use("onsails/lspkind.nvim")

    -- snippets
    use("rafamadriz/friendly-snippets")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- lsp manager
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    
    -- configure lsp servers
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")

    -- nvim-treesitter
    use("nvim-treesitter/nvim-treesitter")

    -- auto closing
    use("windwp/nvim-autopairs")

    -- git signs
    use("lewis6991/gitsigns.nvim")

    -- inlay hints overall
    use("lvimuser/lsp-inlayhints.nvim")

    -- base 16 colors
    use ("RRethy/nvim-base16")
    
    -- clangd extensions for C++
    use("p00f/clangd_extensions.nvim")

end)
