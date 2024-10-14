local module = {}
module.keymaps = {
    {
        mode = "n",
        key = "<LEADER>ff",
        fn = "<CMD>Telescope file_browser<CR>"
    }
}
function module.load_defaults()
    for _, v in ipairs(module.keymaps) do
        vim.keymap.set(v.mode, v.key, v.fn)
    end
end
return module
