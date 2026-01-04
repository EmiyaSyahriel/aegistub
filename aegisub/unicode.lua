local unicode_stub = {}

---@param instring string
---@param index? integer default = 1
---@return integer # width of characters
unicode_stub.charwidth = function(instring, index) return 0 end

---@param instring any
---@return string[] # iterator of all characters
unicode_stub.chars = function(instring) return {} end

---@param instring string
---@return integer # length of codepoints
unicode_stub.len = function(instring) return 0 end

---@param instring string
---@return string # first unicode codepoint
unicode_stub.codepoint = function(instring) return 'a' end

---@param instring string
---@return string # upper case version
unicode_stub.to_upper_case = function(instring) return 'A' end

---@param instring string
---@return string # upper case version
unicode_stub.to_lower_case = function(instring) return 'a' end

---@param instring string
---@return string # fold case version
unicode_stub.to_fold_case = function(instring) return 'a' end


return unicode_stub
