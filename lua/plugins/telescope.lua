return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function(_, opts)
      local actions = require("telescope.actions")

      -- Personalizar as ações
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        mappings = {
          i = { -- Mapeamentos no modo de inserção (insert mode)
            ["<C-j>"] = actions.move_selection_next, -- Mover para a próxima seleção
            ["<C-k>"] = actions.move_selection_previous, -- Mover para a seleção anterior
          },
          n = { -- Mapeamentos no modo normal
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["q"] = actions.close, -- Fechar o Telescope
          },
        },
      })
    end,
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
      { "<leader>fl", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Find Local" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
    },
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
              -- even more opts
            }),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
