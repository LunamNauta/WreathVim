local module = {}
module.opt = {
	clipboard = "unnamedplus",
	cmdheight = 0,
	number = true,
	wrap = false,
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	autochdir = true,
	fileencoding = "utf-8",
	termguicolors = true
}
module.g = {
    mapleader = " ",
    maplocalloader = "\\"
}
function module.load_defaults()
	for k, v in pairs(module.opt) do
		vim.opt[k] = v
	end
    for k, v in pairs(module.g) do
        vim.g[k] = v
    end
end
return module
