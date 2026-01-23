return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>e",
      "<cmd>NvimTreeFindFileToggle<CR>",
      { noremap = true, silent = true, desc = "Toggle NvimTree (find file)" },
    }
  },

  init = function()
    -- disable netrw at the very start
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,

  config = function()
    require("nvim-tree").setup {}
  end,
}
