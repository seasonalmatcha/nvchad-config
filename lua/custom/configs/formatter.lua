local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    go = {
      require("formatter.filetypes.go").gofumpt,
      require("formatter.filetypes.go").goimports_reviser,
      require("formatter.filetypes.go").golines,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})

return M
