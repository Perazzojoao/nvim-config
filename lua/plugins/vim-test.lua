return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>", { noremap = true }),
  vim.keymap.set("n", "<leader>tf", ":TestFile<CR> ", { noremap = true }),
  vim.keymap.set("n", "<leader>ts", ":TestSuite<CR>", { noremap = true }),
  vim.keymap.set("n", "<leader>tl", ":TestLast<CR> ", { noremap = true }),
  vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>", { noremap = true }),
  vim.cmd("let test#strategy = 'vimux'"),
}
