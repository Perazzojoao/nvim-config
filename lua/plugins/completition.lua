return {
  {
    "nvim-cmp",
    dependencies = {
      {
        "garymjr/nvim-snippets",
        opts = {
          friendly_snippets = true,
        },
        dependencies = { "rafamadriz/friendly-snippets" },
      },
    },
    opts = {
      completion = {
        autocomplete = false, -- Autocomplete será manual agora
      },
    },
  },
}
