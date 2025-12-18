require "nvchad.autocmds"


-- Cursor configuration
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.cmd("set guicursor=a:ver120")
  end,
})
