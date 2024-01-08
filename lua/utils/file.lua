M = {}

local uv = vim.loop
local path_sep = uv.os_uname().version:match "Windows" and "\\" or "/"

function M.join_path(...)
       return table.concat({ ... },  path_sep)
end

return M
