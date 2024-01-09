M = {}

local uv = vim.loop
local path_sep = uv.os_uname().version:match "Windows" and "\\" or "/"

function M.join_path(...)
       return table.concat({ ... },  path_sep)
end

function M.get_home_path()
     local home_sign = uv.os_uname().version:match "Windows" and "USERPROFILE" or "HOME"
     return os.getenv(home_sign)
end

return M
