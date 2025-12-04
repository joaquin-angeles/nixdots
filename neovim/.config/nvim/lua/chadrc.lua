-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

-- Theming
M.base46 = {
  theme = "default-mono",
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- Buffer line
-- M.ui = {
--   tabufline = {
--     lazyload = false,
--   },
-- }

return M
