return {
  {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup({
        comment_empty = false,
        create_mappings = true,
        line_mapping = "gcc",
        operator_mapping = "gc",
        hook = function()
          if vim.api.nvim_buf_get_option(0, "filetype") == "vue" then
            vim.api.nvim_buf_set_option(0, "commentstring", "<!-- %s -->")
          end
        end,
      })
      vim.keymap.set({ "n", "v" }, "<leader>;", ":CommentToggle<CR>", { noremap = true, silent = true })
    end,
  },
	{
		"jiangmiao/auto-pairs",
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
		config = function()
			require("dressing").setup({
				input = {
					-- Set to false to disable the vim.ui.input implementation
					ennbled = true,

					-- Default prompt string
					default_prompt = "Input",

					-- Trim trailing `:` from prompt
					trim_prompt = true,

					-- Can be 'left', 'right', or 'center'
					title_pos = "left",

					-- When true, input will start in insert mode.
					start_in_insert = true,

					-- These are passed to nvim_open_win
					border = "rounded",
					-- 'editor' and 'win' will default to being centered
					relative = "cursor",

					-- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
					prefer_width = 40,
					width = nil,
					-- min_width and max_width can be a list of mixed types.
					-- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
					max_width = { 140, 0.9 },
					min_width = { 20, 0.2 },

					buf_options = {},
					win_options = {
						-- Disable line wrapping
						wrap = false,
						-- Indicator for when text exceeds window
						list = true,
						listchars = "precedes:…,extends:…",
						-- Increase this for more context when text scrolls off the window
						sidescrolloff = 0,
					},

					-- Set to `false` to disable
					mappings = {
						n = {
							["<Esc>"] = "Close",
							["<CR>"] = "Confirm",
						},
						i = {
							["<C-c>"] = "Close",
							["<CR>"] = "Confirm",
							["<Up>"] = "HistoryPrev",
							["<Down>"] = "HistoryNext",
						},
					},
				},
			})
		end,
	},
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup({
				input_buffer_type = "dressing",
			})
			vim.keymap.set("n", "<leader>rn", ":IncRename ", {})
		end,
	},
}
