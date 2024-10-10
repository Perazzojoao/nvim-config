return {
  {
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
      colors.bg = "#101010"
      colors.bgFloat = "#121212"
      colors.green = "#52c67a"
      colors.orange = "#FF9800"

      -- vim.cmd.colorscheme("min-theme")
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({})
      vim.cmd("colorscheme github_dark_default")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        colorscheme = "mocha",
        highlight_overrides = {
          mocha = function(mocha)
            return {
              string = { fg = mocha.peach },
              keywords = { fg = mocha.red },
              variable = { fg = mocha.blue },
            }
          end,
        },
      })
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
}
