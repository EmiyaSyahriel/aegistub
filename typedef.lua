---@alias line_class_t "style"|"dialogue"|"comment"|"unknown"
---@alias line_section_t "[Events]"|"[V4+ Styles]"

-- ---------| Aegisub types |---------
---@class subtitle_line_t
---@field class line_class_t for internal type checking
---@field raw string The entire raw string of style
---@field section string Where this goes - for internal type checking
local sub_line = {}

---@class subtitle_info_t: subtitle_line_t -- For subtitle informations and metadata
---@field key string key of metadata
---@field value string value of metadata
local sub_info = {}

---@alias border_style_t 1|3
---@class subtitle_style_t: subtitle_line_t -- For styling, class is "style", section is "[V4+ Styles]"
---@field name string Name of the style
---@field fontname string Name of the font face used by the style
---@field fontsize number Font size for the style
---@field color1 string Main subtitle color
---@field color2 string Karaoke fill color
---@field color3 string Outline color
---@field color4 string Shadow / box color
---@field bold boolean Is bold
---@field italic boolean Is italic
---@field underline boolean Is underlined
---@field scale_x integer Horizontal scale percentage, 100 = 1.0x
---@field scale_y integer Vertical scale percentage, 100 = 1.0x
---@field spacing number In reference pixel
---@field angle number Z rotation
---@field borderstyle border_style_t Border style, 1 = outline, 3 = box
---@field outline number outline width ( in ref pixel )
---@field shadow number shadow distance ( in ref pixel )
---@field align integer numpad style, 9 = top left
---@field margin_l number margin left ( in ref pixel )
---@field margin_r number margin right ( in ref pixel )
---@field margin_t number margin top ( in ref pixel )
---@field margin_b number margin bottom ( in ref pixel )
---@field margin_v number margin vertical, alias to margin_t ( in ref pixel )
---@field encoding integer Windows font encoding ID
---@field relative_to unknown Currently unsupported
---@field vertical unknown Unsupported, tentative AS5 feature
local sub_style = {}

---@class subtitle_dialogue_t: subtitle_line_t -- For dialogue, class is "dialogue", section is "[Events]"
---@field comment boolean Is a comment
---@field layer integer Subtitle layer for overlapping
---@field start_time integer in milliseconds
---@field end_time integer in milliseconds
---@field style string Style name
---@field actor string Actor field for the line
---@field margin_l number margin left ( in ref pixel ), 0 = use style
---@field margin_r number margin right ( in ref pixel ), 0 = use style
---@field margin_t number margin top ( in ref pixel ), 0 = use style
---@field margin_b number margin bottom ( in ref pixel ), 0 = use style
---@field effect string Effect field for the line
---@field userdata table Unused
---@field text string Dialogue text
local sub_text = {}

---@deprecated
---@class subtitle_unknown_t: subtitle_line_t -- For unknown use, undefined behaviour
local sub_unknown = {}

---@class subtitle_t: subtitle_line_t[] -- Line of subtitle
---@field n number Count of subtitle lines
---@field append fun(line:subtitle_line_t) Append new line
---@field append fun(line1:subtitle_line_t, line2:subtitle_line_t, ...) Append multiple new lines
---@field insert fun(i:number, line:subtitle_line_t) Insert line at
---@field insert fun(i:number, line1:subtitle_line_t, line2:subtitle_line_t, ...) Insert multiple lines starting at
---@field delete fun(i: number) Delete one line
---@field delete fun(i1: number, i2: number, ...) Delete multiple lines
---@field delete fun(numbers:number[]) Delete multiple lines, using number array
---@field deleterange fun(first:number, last:number) Delete by range
local subtitle = {}
subtitle.__index = subtitle
