local _2afile_2a = "fnl/kreative/utils/highlight/run.fnl"
local _2amodule_name_2a = "kreative.utils.highlight.run"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("kreative.aniseed.autoload")).autoload
local a, apply, ucolors = autoload("kreative.aniseed.core"), autoload("kreative.utils.highlight.init"), autoload("kreative.utils.highlight.utils")
do end (_2amodule_locals_2a)["a"] = a
_2amodule_locals_2a["apply"] = apply
_2amodule_locals_2a["ucolors"] = ucolors
local function highlight_24_3c_table(high_table)
  for _, value in pairs(high_table) do
    if ((type(value) == "function") and (value() ~= nil)) then
      for _0, nest in pairs({value()}) do
        apply["highlight$"](nest)
      end
    elseif ((type(value) == "table") or (value() ~= nil)) then
      local function _2_()
        local t_1_ = value
        if (nil ~= t_1_) then
          t_1_ = (t_1_)[1]
        else
        end
        return t_1_
      end
      if (type(_2_()) == "table") then
        for _0, nest in pairs(value) do
          apply["highlight$"](nest)
        end
      else
        apply["highlight$"](value)
      end
    else
    end
  end
  return nil
end
_2amodule_2a["highlight$<-table"] = highlight_24_3c_table
return _2amodule_2a