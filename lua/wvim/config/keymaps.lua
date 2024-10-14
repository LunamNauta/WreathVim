local module = {}
module.keymaps = {
    {
        mode = "n",
        key = "<LEADER>ff",
        fn = "<CMD>Telescope file_browser<CR>"
    },
    {
        mode = "n",
        key = "gt",
        fn = function() vim.cmd("BufferGoto " .. vim.v.count) end
    },
    {
        mode = "n",
        key = "<LEADER>tn",
        fn = "<CMD>tabnew<CR>"
    },
    {
        mode = "n",
        key = "<LEADER>tk",
        fn = "<CMD>bdelete<CR>"
    }
}
function module.load_defaults()
    for _, v in ipairs(module.keymaps) do
        vim.keymap.set(v.mode, v.key, v.fn)
    end
end
return module
