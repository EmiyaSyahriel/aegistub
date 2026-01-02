---Aegisub progress reporting API
---@diagnostic disable-next-line: lowercase-global
aegisub_progress = {}

---@param percent number
function aegisub_progress.set(percent) end
---@param msg string
function aegisub_progress.task(msg, ...) end
---@param title string
function aegisub_progress.title(title, ...) end
---@return boolean
function aegisub_progress.is_cancelled() return true end
