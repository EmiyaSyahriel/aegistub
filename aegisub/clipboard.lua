---@diagnostic disable-next-line: lowercase-global
clipboard = {}

---@return string|nil # Clipboard content, nil if error
function clipboard.get() return "" end

---@param new_text string source string
---@return boolean # is operation success?
function clipboard.set(new_text) return false end
