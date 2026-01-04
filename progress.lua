---Aegisub progress reporting API
local aegisub_progress_stub = {}

---@param percent number
aegisub_progress_stub.set = function(percent) end
---@param msg string
aegisub_progress_stub.task = function(msg, ...) end
---@param title string
aegisub_progress_stub.title = function(title, ...) end
---@return boolean
aegisub_progress_stub.is_cancelled = function() return true end

return aegisub_progress_stub
