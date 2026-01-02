---@diagnostic disable-next-line: lowercase-global
unicode = {}

---@param instring string
---@param index? integer default = 1
---@return integer # width of characters
function unicode.charwidth(instring, index) return 0 end

---@param instring any
---@return string[] # iterator of all characters
function unicode.chars(instring) return {} end

---@param instring string
---@return integer # length of codepoints
function unicode.len(instring) return 0 end

---@param instring string
---@return string # first unicode codepoint
function unicode.codepoint(instring) return 'a' end

---@param instring string
---@return string # upper case version
function unicode.to_upper_case(instring) return 'A' end

---@param instring string
---@return string # upper case version
function unicode.to_lower_case(instring) return 'a' end

---@param instring string
---@return string # fold case version
function unicode.to_fold_case(instring) return 'a' end
