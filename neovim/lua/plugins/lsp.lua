return {
  "neovim/nvim-lspconfig",
  evnet = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local function on_attach(_, bufnr)
       local map = function(mode, lhs, rhs, desc)
         vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
       end

       map("n", "gd", vim.lsp.buf.definition, "LSP: Definition")
       map("n", "gr", vim.lsp.buf.references, "LSP: References")
       map("n", "K", vim.lsp.buf.hover, "LSP: Hover")
       map("n", "<leader>rn", vim.lsp.buf.rename, "LSP: Rename")
       map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "LSP: Code action")
     end

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    local servers = {
      lua_ls = {}
    }

    for server, opts in pairs(servers) do
      local base = vim.lsp.config[server] or {}
      vim.lsp.config[server] = vim.tbl_deep_extend(
        "force",
        base,
        { capabilities = capabilities },
        opts
      )

      vim.lsp.enable(server)
    end
  end,
}
