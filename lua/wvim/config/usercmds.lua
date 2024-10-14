local utils_git = require("wvim.utils.git")

local module = {}
module.usercmds = {
    {
        name = "UploadConfig",
        command = utils_git.UploadConfig
    }
}
function module.load_defaults()
    for _, v in ipairs(module.usercmds) do
        vim.api.nvim_create_user_command(v.name, v.command, v.args or {})
    end
end
return module

