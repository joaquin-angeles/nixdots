require "nvchad.autocmds"


-- Cursor configuration
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.cmd("set guicursor=a:ver120")
  end,
})

-- vim.defer_fn(function()
--   if vim.fn.argc() == 0 then
--     local ok, alpha = pcall(require, "alpha")
--     if ok then
--       alpha.start(true)
--     end
--   end
-- end, 50)
