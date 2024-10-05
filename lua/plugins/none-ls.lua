return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.diagnostics.hadolint,
      },
    })
    vim.keymap.set("n", "<leader>fd", vim.lsp.buf.format, {})
  end,
}
