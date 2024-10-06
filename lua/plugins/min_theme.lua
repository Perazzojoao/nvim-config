return {
	"datsfilipe/min-theme.nvim",
	config = function()
		require("min-theme").setup({
			-- (note: if your configuration sets vim.o.background the following option will do nothing!)
			theme = "dark", -- String: 'dark' or 'light', determines the colorscheme used
			transparent = false, -- Boolean: Sets the background to transparent
			italics = {
				comments = true, -- Boolean: Italicizes comments
				keywords = false, -- Boolean: Italicizes keywords
				functions = false, -- Boolean: Italicizes functions
				strings = false, -- Boolean: Italicizes strings
				variables = false, -- Boolean: Italicizes variables
			},
			overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
		})
    local colors = require("min-theme.colors")
    colors.bg = "#090910"
    colors.bgFloat = "#090910"
    colors.green = "#52c67a"
    colors.orange = "#FF9800"
    colors.red = "#f94040"

		vim.cmd.colorscheme("min-theme")
	end,
}
