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
  red = "#ab4642",
  baby_pink = "#d59593",
  pink = "#e1b2b0",
  line = "#3b3b3b", -- for lines like vertsplit
  green = "#a1b56c",
  vibrant_green = "#abcb56",
  blue = "#7cafc2",
  nord_blue = "#609eb5",
  yellow = "#f7ca88",
  sun = "#f8ce92",
  purple = "#ba8baf",
  dark_purple = "#a86c9a",
  teal = "#6cb598",
  orange = "#a16946",
  cyan = "#86c1b9",
  statusline_bg = "#212121",
  lightbg = "#2f2f2f",
  pmenu_bg = "#d59593",
  folder_bg = "#7cafc2",
}

M.base_16 = {
  base00 = "#101010",
  base01 = "#1f1f1f",
  base02 = "#2e2e2e",
  base03 = "#383838",
  base04 = "#424242",
  base05 = "#bfc5d0",
  base06 = "#c7cdd8",
  base07 = "#ced4df",
  base08 = "#eee8d5",
  base09 = "#B8B7B1",
  base0A = "#859ba2",
  base0B = "#7b9198",
  base0C = "#DFDFDA",
  base0D = "#ced4df",
  base0E = "#DAD4C3",
  base0F = "#ced4df",
}

M.type = "dark"

M = require("base46").override_theme(M, "default-dark")

return M
