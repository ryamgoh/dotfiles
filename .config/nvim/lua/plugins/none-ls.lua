return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        --lua
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint_d,
        --javascript and typescript
        null_ls.builtins.formatting.prettier,
        --python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        --rubyonrails
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
