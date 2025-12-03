require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Transparent background
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
]]

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

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

vim.o.swapfile = false -- Disable swap file
