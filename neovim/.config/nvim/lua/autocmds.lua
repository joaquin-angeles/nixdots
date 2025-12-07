require "nvchad.autocmds"


-- Cursor configuration
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    os.execute('printf "\\033[5 q"')
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
