---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "catppuccin",
  statusline = {
    theme = "minimal",
    overriden_modules = nil,
  },
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M