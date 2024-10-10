return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      keys[#keys + 1] = { "H", "<cmd>lua vim.lsp.buf.hover()<CR>" }
      keys[#keys + 1] = { "K", false }
    end,
  },
}
