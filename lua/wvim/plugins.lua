local core_plugins = {
{
    "neovim/nvim-lspconfig",
    dependencies = {"mason-lspconfig.nvim"},
    lazy = true
},
{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false
}
}
return core_plugins
