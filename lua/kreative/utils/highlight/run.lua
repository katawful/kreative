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
    if (type(value) == "function") then
      local function _1_()
        local t_2_ = value()
        if (nil ~= t_2_) then
          t_2_ = (t_2_)[1]
        else
        end
        return t_2_
      end
      if ((type(value()) == "table") and _1_()) then
        for _0, nest in pairs(value()) do
          if (type(nest) == "function") then
            apply["highlight$"](nest())
          else
            apply["highlight$"](nest)
          end
        end
      else
        if value() then
          apply["highlight$"](value())
        else
        end
      end
    else
      local function _8_()
        local t_7_ = value
        if (nil ~= t_7_) then
          t_7_ = (t_7_)[1]
        else
        end
        return t_7_
      end
      if (type(_8_()) == "table") then
        for _0, nest in pairs(value) do
          apply["highlight$"](nest)
        end
      else
        apply["highlight$"](value)
      end
    end
  end
  return nil
end
_2amodule_2a["highlight$<-table"] = highlight_24_3c_table
return _2amodule_2a