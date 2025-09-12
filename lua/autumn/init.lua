local theme = require("autumn.theme")
local M = {}
function M.setup()
	for group, opts in pairs(theme.highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	-- auto configure color if lualine is installed
	package.loaded["lualine.themes.autumn"] = require("autumn.lualine")
end
return M
