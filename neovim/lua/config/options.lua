-- 環境設定系
vim.opt.title = true
vim.opt.number = true

-- インデント設定
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- 視界確保
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 16
vim.opt.sidescroll = 1

-- OSのクリップボード使う
vim.opt.clipboard = { "unnamed", "unnamedplus" }
vim.opt.mouse = "a"

-- バックアップ作らない
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = false

-- ビープ音設定 / ビープ音無効
vim.opt.belloff = "all"

-- 検索/置換の設定
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.gdefault = true
vim.opt.wildmode = { "list:longest", "full" }
vim.opt.history = 50

-- シンタックスハイライト
vim.opt.cursorline = true

-- ファイル関連
vim.opt.confirm = true

-- colorscheme
vim.cmd.colorscheme("backpack")

-- lsp
vim.opt.updatetime = 250
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
