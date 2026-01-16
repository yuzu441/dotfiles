return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local ts = require("nvim-treesitter")

    ts.setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    -- ts.install({
    --   "cpp",
    --   "css",
    --   "fish",
    --   "go",
    --   "haskell",
    --   "html",
    --   "javascript",
    --   "json",
    --   "json5",
    --   "lua",
    --   "php",
    --   "python",
    --   "ruby",
    --   "rust",
    --   "ssh_config",
    --   "toml",
    --   "tsx",
    --   "typescript",
    --   "yaml",
    -- })

    -- FileType が決まったら treesitter を有効化
    local group = vim.api.nvim_create_augroup("TreesitterStart", { clear = true })

    vim.api.nvim_create_autocmd("FileType", {
      group = group,
      pattern = "*",
      callback = function()
        pcall(vim.treesitter.start)

        -- indent setting override
        if vim.bo.indentexpr == "" then
          local ok, _ = pcall(function()
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end)
        end
      end,
    })
  end,
}
