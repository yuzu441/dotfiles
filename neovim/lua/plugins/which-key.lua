return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    dependencies = {
      'nvim-mini/mini.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }
}
