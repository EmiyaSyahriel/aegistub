---@alias dlgclass_t "label"|"edit"|"intedit"|"floatedit"|"textbox"|"dropdown"|"checkbox"|"color"|"coloralpha"|"alpha"

---@class dlg_control_t
---@field class dlgclass_t
---@field x number 0 is left
---@field y number 0 is top
---@field width number
---@field height number
---@field hint? string used as tooltip, usable on : anything except label
---@field name? string used as a key to the control value when accessed from Lua, usable on : anything except label
---@field label? string text displayed on control, usable on: label, checkbox
---@field text? string initial content of the control, if is textbox then this may have newline, usable on: edit, textbox
---@field value? number|string|boolean initial value of the control, if is intedit then decimals would be truncated, if is dropdown or color or alpha or coloralpha then this field would be a type of case-sensitive string, if is checkbox then this field would be a type of boolean, usable on: intedit, floatedit, dropdown, checkbox, color, coloralpha, alpha
---@field min? number inclusive minimum value, usable on : intedit, floatedit
---@field max? number inclusive maximum value, usable on : intedit, floatedit
---@field step? number size of change when spin buttons are clicked, if nil then no spin button even if min & max were set, but doesn't require min & max, usable on : floatedit
---@field items? table items for dropdown, usable on: dropdown
local dlgctrl = {}

---@alias dlgbutton_t "ok"| "yes" | "save" | "apply" | "close" | "no" | "cancel" | "help" | "context_help"

---Aegisub dialog API
local aegisub_dialog_stub = {}

---@param config dlg_control_t[] dialog definition table
---@param buttons string[] list of buttons
---@param button_ids table id of buttons, corresponds to platform button ID
---@return dlgbutton_t|boolean which button clicked
---@return table dialog result table - contain values from the controls defined on config accessible via their .name
aegisub_dialog_stub.display = function(config, buttons, button_ids) return "ok",{} end

---@param title string
---@param default_file string
---@param default_dir string
---@param wildcards string What to show on file type dropdown, format is like this : `All files (.)|.|XYZ files (.xyz)|.xyz`
---@param allow_multiple boolean default = false
---@param must_exists boolean = default = true
---@return nil|string|string[] canceled = nil; allow_multiple is false = file path string; allow_multiple is true = string[] of selected file paths
aegisub_dialog_stub.open = function(title, default_file, default_dir, wildcards, allow_multiple, must_exists) return default_file end

---@param title string
---@param default_file string
---@param default_dir string
---@param wildcards string What to show on file type dropdown, format is like this : `All files (.)|.|XYZ files (.xyz)|.xyz`
---@param dont_prompt_for_overwrite boolean default = false
---@return nil|string file path or nil if cancelled
aegisub_dialog_stub.save = function(title, default_file, default_dir, wildcards, dont_prompt_for_overwrite) return default_file end

return aegisub_dialog_stub
