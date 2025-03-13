require("config.settings")
require("config.remap")
-- lazy nvim package manager
require("config.lazy")

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
