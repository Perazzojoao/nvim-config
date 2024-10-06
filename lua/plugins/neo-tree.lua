return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			filesystem = {
				filtered_items = {
					hide_gitignored = false,
					always_show_by_pattern = { -- uses glob style patterns
						".env*",
					},
				},
				follow_current_file = {
					enabled = true,
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem show toggle left<CR>", {})
		vim.keymap.set("n", "<leader>ge", ":Neotree filesystem focus<CR>", {})
	end,
}
