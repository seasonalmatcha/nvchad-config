---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  telescope = {
    style = 'bordered'
  },
  transparency = true,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
