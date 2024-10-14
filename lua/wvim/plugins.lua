local core_plugins = {
{
    "neovim/nvim-lspconfig",
    dependencies = {"mason-lspconfig.nvim"},
},
{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false
},
{
    "nvim-telescope/telescope.nvim",
    dependencies = {"telescope-fzf-native.nvim", "nvim-telescope/telescope-file-browser.nvim", "nvim-lua/plenary.nvim"},
    config = function() require("wvim.core.telescope").setup() end
},
{
    "nvim-telescope/telescope-fzf-native.nvim", 
    build = "mingw32-make",
},
{
    "nvim-treesitter/nvim-treesitter",
    config = function() require("wvim.core.treesitter").setup() end
},
{
    "williamboman/mason.nvim",
    dependencies = {"williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig"},
    config = function() require("wvim.core.mason").setup() end
}
}
return core_plugins
