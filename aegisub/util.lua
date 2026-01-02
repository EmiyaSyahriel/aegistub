---@diagnostic disable-next-line: lowercase-global
util = {}

---@param old_table table
---@return table # new table with shallow copy
function util.copy(old_table) return old_table end

---@param old_table any
---@return table # new table with all values copied
function util.deep_copy(old_table) return old_table end

---@param r integer
---@param g integer
---@param b integer
---@return string # SSA string color "&HBBGGRR&"
function util.ass_color(r,g,b) return "" end

---@param a integer
---@return string # SSA string alpha "&HAA&"
function util.ass_alpha(a) return "" end

---@param r integer
---@param g integer
---@param b integer
---@param a integer
---@return string # SSA string color "&HAABBGGRR&"
function util.ass_style_color(r,g,b,a) return "" end

---@param color string
---@return integer red, integer green, integer blue, integer alpha
function util.extract_color(color) return 0,0,0,0 end

---@param color_str string
---@return integer alpha
function util.alpha_from_style(color_str) return 0 end

---@param color_str string
---@return string composition of extract_color and ass_color
function util.color_from_style(color_str) return "" end

---@param h integer
---@param s integer
---@param v integer
---@return integer r, integer g, integer b
function util.HSV_to_RGB(h,s,v) return 0,0,0 end

---@param instring string source string
---@return string trimmed string
function util.trim(instring) return instring end

---@param instring string source string
---@return string first_word, string rest_of_string
function util.headtail(instring) return instring,instring end

---@param instring string source string
---@return string[] words
function util.word(instring) return {instring} end

---@param inval number
---@param min number|integer
---@param max number|integer
---@return number|integer # clamped value
function util.clamp(inval, min, max) return inval end

---@param t number Factor
---@param a number|integer value on 0
---@param b number|integer value on 1
---@return number|integer # interpolated value
function util.interpolate(t,a,b) return a end

---@param t number Factor
---@param color1 string value on 0, in ASS-style color string
---@param color2 string value on 1, in ASS-style color string
---@return string # interpolated value in ASS-style color string
function util.interpolate_color(t, color1, color2) return color1 end

---@param t number Factor
---@param a1 number|integer|string value on 0, either as ASS-style color string or plain number
---@param a2 number|integer|string value on 1, either as ASS-style color string or plain number
---@return string # interpolated value in ASS-style color string
function util.interpolate_alpha(t, a1, a2) return string(a1) end
