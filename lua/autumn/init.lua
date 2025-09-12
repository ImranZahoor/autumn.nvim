local theme = require("autumn.theme")
local M = {}
function M.setup()
	for group, opts in pairs(theme.highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	-- auto configure color if lualine is installed
	local ok, lualine = pcall(require, "lualine")
	if ok then
		local lualine_theme = require("autumn.lualine")
		lualine.setup({
			options = {
				theme = lualine_theme,
			},
		})
	end
end
return M
