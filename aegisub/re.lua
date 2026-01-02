---@class match_occurence_t: table
---@field str string
---@field first integer
---@field last integer
local match_occurence = {}

---@class match_table_t: match_occurence_t[]
local match_table = {}
match_table.__index = match_table

---@class re_instance_t # Compiled version of the regex pattern
---@field split fun(str:string,skip_empty?:boolean,max_splits?:integer):string[] split by the pattern
---@field gsplit fun(str:string):string[] split by the pattern, returns iterator
---@field find fun(str:string):match_table_t|nil find non-overlapping matches
---@field gfind fun(str:string):match_occurence_t[]|nil find non-overlapping matches, returns iterator
---@field match fun(str:string):match_table_t|nil match the pattern to the string
---@field gmatch fun(str:string):match_occurence_t[]|nil match the pattern to the string, returns iterator
---@field sub fun(str:string, replace:string, max_count?:integer):string,integer replace matching pattern in the string
local re_inst = {}

---@diagnostic disable-next-line: lowercase-global
re = {
    ICASE = 0,
    NOSUB = 1,
    NEWLINE_ALT = 2,
    NO_MOD_M = 3,
    MOD_S = 4,
    NO_EMPTY_SUBEXPRESSION = 5
}

---Compile the pattern, this results in faster matching if reused than using plain pattern on functions
---@param pattern string source pattern
---@param ... integer flags
---@return re_instance_t # compiled pattern
function re.compile(pattern, ...) return {} end

---split by the pattern
---@param str string
---@param pattern string
---@param skip_empty? boolean
---@param max_splits? integer Maximum string being splitted, the rest would be kept as is
---@return string[]
function re.split(str, pattern, skip_empty, max_splits) return {string} end

---split by the pattern
---@param str string
---@param pattern string
---@param skip_empty? boolean
---@param max_splits? integer Maximum string being splitted, the rest would be kept as is
---@return string[] iterator
function re.gsplit(str, pattern, skip_empty, max_splits) return {string} end

---find all non-overlapping substrings
---@param str string
---@param pattern string
---@return match_table_t|nil matches
function re.find(str, pattern) return {} end

---find all non-overlapping substrings
---@param str string
---@param pattern string
---@return match_occurence_t[]|nil iterator
function re.gfind(str, pattern) return {} end

---match the pattern to the string
---@param str string
---@param pattern string
---@return match_table_t|nil match table
function re.match(str, pattern) return {} end

---match the pattern to the string
---@param str string
---@param pattern string
---@return match_occurence_t[]|nil iterator
function re.gmatch(str, pattern) return {} end

---replace pattern in the string with the replacement string
---@param str string
---@param replace string
---@param pattern string
---@param max_count? integer how many strings to be replaced at one time
---@return string replaced_string, integer how_many_replaced
function re.sub(str, replace, pattern, max_count) return str,0 end
