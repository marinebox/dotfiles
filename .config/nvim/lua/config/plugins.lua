require("lazy").setup({
    {
        "Mofiqul/dracula.nvim"
    },

    -- Syntax Highlighting with Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",    -- Automatically update parsers
        config = function()
            require("nvim-treesitter.configs").setup({
                -- Install parsers for these languages
                ensure_installed = { "cpp", "python" },
                sync_install = false,   -- Install languages asynchronously
                highlight = {
                    enable = true,      -- Enable highlighting
                    additional_vim_regex_highlighting = false,
                },
            })
        end,
    },

    -- LSP Configuration
    {
	    "neovim/nvim-lspconfig",
	    config = function()
	        local lspconfig = require("lspconfig")
	        -- C++ Language Server
	        lspconfig.clangd.setup({})
	        -- Python Language Server
	        lspconfig.pyright.setup({})
    	end,
    },

    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip",
        },
       config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                }),
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "path" },
                    { name = "luasnip" },
                },
            })
        end,
    },
})

