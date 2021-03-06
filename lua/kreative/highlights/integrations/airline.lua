local _2afile_2a = "fnl/kreative/highlights/integrations/airline.fnl"
local ucolors = require("kreative.utils.color")
local colors = require("kreative.color")
local syntax = require("kreative.highlights.syntax")
local groups = require("kreative.highlights.main")
local main = require("kreative.main")
local mainFG = groups.mainFG()[1]
if ((vim.o.background == "dark") and (main.configs.contrast == "soft")) then
  mainFG[1] = ucolors.brighten(groups.mainFG()[1], 0.8)
else
end
local function normalMode_c()
  local output = {mainFG()[1], groups.fillBG()[1], mainFG()[2], groups.fillBG()[2], ""}
  return output
end
local function normalMode_b()
  local output = {mainFG()[1], ucolors.blend(groups.selectionBG()[1], groups.shadowBG()[1], 0.4), mainFG()[2], groups.selectionBG()[2], ""}
  return output
end
local function normalMode_a()
  local output = {mainFG()[1], groups.highlightBG()[1], mainFG()[2], groups.highlightBG()[2], ""}
  return output
end
local function replaceMode_c()
  local output = {mainFG()[1], ucolors.brighten(groups.selectionBG()[1], 0.2), mainFG()[2], groups.selectionBG()[2], ""}
  return output
end
local function replaceMode_b()
  local output = {mainFG()[1], ucolors.blend(groups.selectionBG()[1], groups.shadowBG()[1], 0.4), mainFG()[2], groups.selectionBG()[3], ""}
  return output
end
local function replaceMode_a()
  local output = {mainFG()[1], groups.infoBG()[1], mainFG()[2], groups.infoBG()[2], "bold"}
  return output
end
local function visualMode_c()
  local output = {mainFG()[1], groups.highlightBG()[1], mainFG()[2], groups.highlightBG()[2], ""}
  return output
end
local function visualMode_b()
  local output = {mainFG()[1], ucolors.blend(groups.selectionBG()[1], groups.shadowBG()[1], 0.4), mainFG()[2], groups.selectionBG()[3], ""}
  return output
end
local function visualMode_a()
  local output = {mainFG()[1], groups.errorBG()[1], mainFG()[2], groups.errorBG()[2], "bold"}
  return output
end
local function insertMode_c()
  local output = {mainFG()[1], ucolors.brighten(groups.selectionBG()[1], 0.2), mainFG()[2], groups.selectionBG()[2], ""}
  return output
end
local function insertMode_b()
  local output = {mainFG()[1], ucolors.blend(groups.selectionBG()[1], groups.shadowBG()[1], 0.4), mainFG()[2], groups.selectionBG()[3], ""}
  return output
end
local function insertMode_a()
  local output = {mainFG()[1], groups.selectionBG()[1], mainFG()[2], groups.selectionBG()[2], "bold"}
  return output
end
local function terminalMode_c()
  local output = {mainFG()[1], ucolors.blend(groups.errorBG()[1], groups.mainBG()[1], 0.8), mainFG()[2], groups.errorBG()[2], ""}
  return output
end
local function terminalMode_b()
  local output = {mainFG()[1], ucolors.blend(groups.selectionBG()[1], groups.shadowBG()[1], 0.4), mainFG()[2], groups.selectionBG()[3], ""}
  return output
end
local function terminalMode_a()
  local output = {mainFG()[1], ucolors.blend(groups.fillBG()[1], groups.mainBG()[1], 0.8), mainFG()[2], groups.fillBG()[3], "bold"}
  return output
end
local function inactiveGroup()
  local output = {groups.mainBG()[1], colors.foreground()[3], mainFG()[2], groups.umbraBG()[2], ""}
  return output
end
local function warningGroup()
  local output = {mainFG()[1], groups.warningBG()[1], mainFG()[2], groups.warningBG()[2], ""}
  return output
end
local function errorGroup()
  local output = {mainFG()[1], groups.errorBG()[1], mainFG()[2], groups.errorBG()[2], ""}
  return output
end
local function modifiedC(mode)
  local output = {}
  do
    local _2_ = mode
    if (_2_ == "normal") then
      output = {mainFG()[1], "", mainFG()[2], "", ""}
    elseif (_2_ == "insert") then
      output = {mainFG()[1], "", mainFG()[2], "", ""}
    elseif (_2_ == "replace") then
      output = {mainFG()[1], "", mainFG()[2], "", ""}
    elseif (_2_ == "visual") then
      output = {mainFG()[1], "", mainFG()[2], "", ""}
    elseif (_2_ == "inactive") then
      output = {groups.mainBG()[1], "", groups.mainBG()[2], "", ""}
    else
    end
  end
  return output
end
return modifiedC