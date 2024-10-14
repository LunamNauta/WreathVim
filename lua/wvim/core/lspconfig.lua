local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local module = {}
module.opts = {}
function module.setup()
    local default_capabilities = cmp_nvim_lsp.default_capabilities()
    for _, v in ipairs(wvim.languages.mason_lspconfig) do
        local opts = vim.tbl_deep_extend("force", wvim.languages.mason_lspconfig_opts[v] or {}, {capabilities = default_capabilities})
        lspconfig[v].setup(opts)
    end
end
return module
