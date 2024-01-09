local M = {}

local file_utils = require("utils.file")

M.config = function()
  local cfg = {
    icons = {},
    PATH = "append",
    install_root_dir = file_utils.join_path(file_utils.get_home_path(), '.config', "nvim-data", "mason"),
    registries = {
      "lua:mason-registry.index",
      "github:mason-org/mason-registry",
    },
  }
  return cfg
end

M.setup = function()
  local status_ok, mason = pcall(require, "mason")
  if not status_ok then
    return
  end
  mason.setup(M.config())
end

return M
