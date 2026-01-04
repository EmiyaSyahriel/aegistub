--[[
Aegisub Stub for LuaLS

All interface info and documentations were taken from https://aegisub.org/docs/latest/automation/lua/

License of Aegisub: GPL-compatible BSD-style license
License of this stub: MIT
]]

-- include LuaLS annotations for types, debug, progress and dialogs types
require "typedef"
local aegisub_dialog = require "dialog"
local aegisub_progress = require "progress"
local aegisub_debug = require "debugging"

-- ---------| Aegisub static functions |---------

---Core Aegisub API
---@diagnostic disable-next-line: lowercase-global
aegisub = {
    progress = aegisub_progress,
    dialog = aegisub_dialog,
    debug = aegisub_debug
}

---Register new export filter
---@param name string
---@param desc string
---@param prio number
---@param func_proc fun(subs:subtitle_t, conf:table)
---@param func_config? fun(subs:subtitle_t, prev_conf:table):dlg_control_t[]
aegisub.register_filter = function(name, desc, prio, func_proc, func_config) end

---Register new macro
---@param name string
---@param desc string
---@param func_macro fun(subs:subtitle_t, selected:integer[], active:integer)
---@param func_validate? fun(subs:subtitle_t, selected:integer[], active:integer):boolean|string
---@param func_is_active? fun(subs:subtitle_t, selected:integer[], active:integer):boolean|string
aegisub.register_macro = function(name, desc, func_macro, func_validate, func_is_active) end

-- Set undo point for the subtitle currently being worked on
---@param description string description of the undo point
aegisub.set_undo_point = function(description) end

-- Cancel script directly, never returns since it would terminate the script right away
aegisub.cancel = function() end

---Calculate the size of the text when usinga specific style
---@param style string what style to use for calculation, must be in current document's style table
---@param text string source text, should not contain any formatting or newline since it would just handled like raw string
---@return number width total
---@return number height total
---@return number descent
---@return number ext_lead
aegisub.text_extents = function(style, text) return 0, 1, 2, 3 end

-- This is for Aegisub internal strings like "OK" or "Cancel" since you can't add any translated entry yourself
---@param untranslated string source untranslated string
---@return string translated
aegisub.gettext = function(untranslated) return untranslated end

---@param ms number
---@return integer frame_num
aegisub.frame_from_ms = function(ms)
    -- This is just a stub calculation (60fps), not reflecting the real API
    return ms / 1000 * 60
end

---@param frame integer
---@return number ms
aegisub.ms_from_frame = function(frame)
    -- This is just stub calculation (60fps), not reflecting the real API
    return (frame / 60) * 1000
end

---@alias ar_mode_t 0|1|2|3|4

---@return integer width
---@return integer height
---@return number ar_number
---@return ar_mode_t ar_mode -- 0 = 1:1 ; 1 = 4:3 ; 2 = 16:9 ; 3 = 2.35:1 or approx. 40:17 ; 4 = custom
aegisub.video_size = function() return 1280, 720, 3.14, 4 end

---@return integer[] frame_num_of_keyframes
aegisub.keyframes = function() return {} end

---Expand path specifier in the path into an actual path, something like:
--- - `?data` = Aegisub application data directory
--- - `?user` = Aegisub user data directory
--- - `?temp` = Temp directory
--- - `?local` = Local App Data on Windows, same as ?user oon other platforms
--- - `?script` = Directory of the active subtitle, only available if it is saved / opened from actual file system
--- - `?video` = Directory of the active video, do not use if the video is a dummy
--- - `?audio` = Directory of the active audio, do not use if the video is a dummy
---@param encoded_path string
---@return string decoded_path
aegisub.decode_path = function(encoded_path) return encoded_path end

---Get a key-value pairs about the active project, content may change
---@return table project_properties
aegisub.project_properties = function() return {} end

---@param msg string
---@param ... string formatting
---@overload fun(msg:string, ...)
---@overload fun(level:integer, msg:string, ...)
aegisub.log = function(msg, ...) aegisub_debug.log(msg, ...) end
