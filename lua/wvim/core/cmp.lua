local cmp = require("cmp")
local luasnip = require("luasnip")

local module = {}
module.opts = {
    expand = function(args)
        luasnip.lsp_expand(args.body)
    end,
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },
    mapping = {
        ["<CR>"] = cmp.mapping.confirm({select = true})
    },
    sources = cmp.config.sources({
        {name = "nvim_lsp"},
        {name = "luasnip"},
        {name = "buffer"}
    })
}
function module.setup()
    cmp.setup(module.opts)
    cmp.setup.cmdline({"/", "?"}, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {name = "buffer"}
    })
    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            {name = "path"},
            {name = "cmdline"}
        },
        matching = {disallow_symbol_nonprefix_matching = false}
    })
end
return module
