return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    local surround = require("nvim-surround")
    require("nvim-surround").setup({})
  end,
  keys = {
    { "ds", "<Plug>(nvim-surround-delete)" },
    { "cs", "<Plug>(nvim-surround-change)" },
  },
}
