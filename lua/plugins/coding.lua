return {
  {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup({
        comment_empty = false,
        create_mappings = true,
        line_mapping = "gcc",
        operator_mapping = "gc",
      })
      vim.keymap.set({ "n", "v" }, "<leader>;", ":CommentToggle<CR>", { noremap = true, silent = true })
    end,
  },
}
