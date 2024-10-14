local utils_files = require("wvim.utils.files")

local module = {}
function module.UploadConfig()
    local git_dir = vim.fn.stdpath("config")
    local git_command = "!git -C " .. git_dir
    local commit_msg = "Upload from 'UploadConfig' (" .. vim.fn.strftime("%c") .. ")"
    vim.cmd(git_command .. " add -A")
    vim.cmd(git_command .. " commit -m \"" .. commit_msg .. "\"")
    vim.cmd(git_command .. " push origin main")
end
return module
