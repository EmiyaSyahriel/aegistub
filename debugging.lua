---Aegisub log debugging API

local aegisub_debug_stub = {}

---@param msg string
---@param ... string formatting
---@overload fun(msg:string, ...)
---@overload fun(level:integer, msg:string, ...)
aegisub_debug_stub.out = function(msg, ...) end

---@param msg string
---@param ... string formatting
---@overload fun(msg:string, ...)
---@overload fun(level:integer, msg:string, ...)
aegisub_debug_stub.log = function(msg, ...) aegisub_debug_stub.out(msg, ...) end

return aegisub_debug_stub
