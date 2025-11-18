-- credit to original theme for existing : https://github.com/kdheepak/monochrome.nvim
-- NOTE: This is a modified version of it

local M = {}

M.base_30 = {
  white = "#f8f8f8",
  darker_black = "#101010",
  black = "#181818", --  nvim bg
  black2 = "#262626",
  one_bg = "#2d2d2d",
  one_bg2 = "#343434",
  one_bg3 = "#3b3b3b",
  grey = "#494949",
  grey_fg = "#575757",
  grey_fg2 = "#5e5e5e",
  light_grey = "#656565",
  red = "#ec8989",
  baby_pink = "#eca8a8",
  pink = "#da838b",
  line = "#2e2e2e", -- for lines like vertsplit
  green = "#c9d36a",
  vibrant_green = "#eff6ab",
  blue = "#8abae1",
  nord_blue = "#a5c6e1",
  yellow = "#ffe6b5",
  sun = "#eff6ab",
  purple = "#e1bee9",
  dark_purple = "#db9fe9",
  teal = "#6484a4",
  orange = "#efb6a0",
  cyan = "#9aafe6",
  statusline_bg = "#212121",
  lightbg = "#2f2f2f",
  pmenu_bg = "#859ba2",
  folder_bg = "#7797b7",
}

M.base_16 = {
  base00 = "#181818",
  base01 = "#282828",
  base02 = "#383838",
  base03 = "#585858",
  base04 = "#b8b8b8",
  base05 = "#d8d8d8",
  base06 = "#e8e8e8",
  base07 = "#f8f8f8",
  base08 = "#eee8d5",
  base09 = "#B8B7B1",
  base0A = "#859ba2",
  base0B = "#7b9198",
  base0C = "#DFDFDA",
  base0D = "#ced4df",
  base0E = "#DAD4C3",
  base0F = "#ced4df",
}

M.polish_hl = {
  treesitter = {
    ["@punctuation.bracket"] = { fg = M.base_30.red },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "monochrome")

return M
