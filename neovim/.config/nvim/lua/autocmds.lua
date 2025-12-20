require "nvchad.autocmds"

-- Absolute line numbers in Insert
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.o.relativenumber = false
  end,
})

-- Relative lines on Normal mode
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.o.relativenumber = true
  end,
})

-- Transparent background
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
]]
