local colors = require("autumn.colors")

local lualine_theme = {
	normal = {
		a = { fg = colors.black_deep, bg = colors.red_bright, gui = "bold" },
		b = { fg = colors.gray_purple, bg = colors.deep_purple },
		c = { fg = colors.gray_purple, bg = colors.charcoal },
	},
	insert = {
		a = { fg = colors.black_deep, bg = colors.orange_burnt, gui = "bold" },
	},
	visual = {
		a = { fg = colors.black_deep, bg = colors.red_wine, gui = "bold" },
	},
	replace = {
		a = { fg = colors.black_deep, bg = colors.taupe, gui = "bold" },
	},
	command = {
		a = { fg = colors.black_deep, bg = colors.brown_medium, gui = "bold" },
	},
	inactive = {
		a = { fg = colors.gray_purple, bg = colors.charcoal },
		b = { fg = colors.gray_purple, bg = colors.charcoal },
		c = { fg = colors.gray_purple, bg = colors.charcoal },
	},
}

return lualine_theme
