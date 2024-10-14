local module = {}
module.settings = {
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
function module.load_settings()
	for k, v in pairs(module.settings) do
		vim.opt[k] = v
	end
end
return module
