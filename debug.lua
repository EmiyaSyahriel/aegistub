
---Aegisub log debugging API
---@diagnostic disable-next-line: lowercase-global
aegisub_debug = {}

---@param msg string
---@param ... string formatting
---@overload fun(level:integer, msg:string, ...)
function aegisub_debug.out(msg, ...) end

---@param msg string
---@param ... string formatting
---@overload fun(level:integer, msg:string, ...)
function aegisub.log(msg, ...) aegisub.debug.log(msg, ...) end
