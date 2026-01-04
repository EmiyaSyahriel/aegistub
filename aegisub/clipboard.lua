local clipboard_stub = {}

---@return string|nil # Clipboard content, nil if error
clipboard_stub.get = function() return "" end

---@param new_text string source string
---@return boolean # is operation success?
clipboard_stub.set = function(new_text) return false end

return clipboard_stub
