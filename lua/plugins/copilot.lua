return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = false,
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          hide_during_completion = true,
          debounce = 75,
          keymap = {
            accept = "Tab",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
      })
      vim.keymap.set("i", "<Tab>", "<cmd>Copilot suggestion accept<CR>", { noremap = true, silent = true })
      vim.keymap.set("i", "<M-l>", "<cmd>Copilot suggestion accept_word<CR>", { noremap = true, silent = true })
    end,
  },
}
