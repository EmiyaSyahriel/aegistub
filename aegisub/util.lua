local util_stub = {}

---@param old_table table
---@return table # new table with shallow copy
util_stub.copy = function(old_table) return old_table end

---@param old_table any
---@return table # new table with all values copied
util_stub.deep_copy = function(old_table) return old_table end

---@param r integer
---@param g integer
---@param b integer
---@return string # SSA string color "&HBBGGRR&"
util_stub.ass_color = function(r,g,b) return "" end

---@param a integer
---@return string # SSA string alpha "&HAA&"
util_stub.ass_alpha = function(a) return "" end

---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@return string # SSA string color "&HAABBGGRR&"
util_stub.ass_style_color = function(r,g,b,a) return "" end

---@param color string
---@return integer red, integer green, integer blue, integer alpha
util_stub.extract_color = function(color) return 0,0,0,0 end

---@param color_str string
---@return integer alpha
util_stub.alpha_from_style = function(color_str) return 0 end

---@param color_str string
---@return string composition of extract_color and ass_color
util_stub.color_from_style = function(color_str) return "" end

---@param h integer
---@param s integer
---@param v integer
---@return integer r, integer g, integer b
util_stub.HSV_to_RGB = function(h,s,v) return 0,0,0 end

---@param instring string source string
---@return string trimmed string
util_stub.trim = function(instring) return instring end

---@param instring string source string
---@return string first_word, string rest_of_string
util_stub.headtail = function(instring) return instring,instring end

---@param instring string source string
---@return string[] words
util_stub.word = function(instring) return {instring} end

---@param inval number
---@param min number|integer
---@param max number|integer
---@return number|integer # clamped value
util_stub.clamp = function(inval, min, max) return inval end

---@param t number Factor
---@param a number|integer value on 0
---@param b number|integer value on 1
---@return number|integer # interpolated value
util_stub.interpolate = function(t,a,b) return a end

---@param t number Factor
---@param color1 string value on 0, in ASS-style color string
---@param color2 string value on 1, in ASS-style color string
---@return string # interpolated value in ASS-style color string
util_stub.interpolate_color = function(t, color1, color2) return color1 end

---@param t number Factor
---@param a1 number|integer|string value on 0, either as ASS-style color string or plain number
---@param a2 number|integer|string value on 1, either as ASS-style color string or plain number
---@return string # interpolated value in ASS-style color string
util_stub.interpolate_alpha = function(t, a1, a2) return string(a1) end

return util_stub
