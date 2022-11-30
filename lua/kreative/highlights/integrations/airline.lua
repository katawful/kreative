local _2afile_2a = "fnl/kreative/highlights/integrations/airline.fnl"
local ucolors = require("kreative.utils.highlight.utils")
local colors = require("kreative.color")
local syntax = require("kreative.highlights.syntax")
local groups = require("kreative.highlights.main")
local main = require("kreative.main")
local mainFG = (require("kreative.highlights.main")).mainFG()
if ((main.configs.background == "dark") and (main.configs.contrast == "soft")) then
  mainFG[1] = ucolors.brighten(colors.kreative.fg.auto.color, 0.8)
else
end
local function normalMode_c()
  local output = {colors.kreative.fg.auto.color, colors.kreative.pink.base.color, 7, 5, ""}
  return output
end
local function normalMode_b()
  local output = {colors.kreative.fg.auto.color, colors.kreative.blue.mix_shadow_bg.color, 7, 4, ""}
  return output
end
local function normalMode_a()
  local output = {colors.kreative.fg.auto.color, colors.kreative.purple.base.color, 7, 6, ""}
  return output
end
local function replaceMode_c()
  local output = {colors.kreative.fg.auto.color, colors.kreative.blue.brighten.color, 7, 4, ""}
  return output
end
local function replaceMode_b()
  local output = {colors.kreative.fg.auto.color, colors.kreative.blue.mix_shadow_bg.color, 7, 12, ""}
  return output
end
local function replaceMode_a()
  local output = {colors.kreative.fg.auto.color, colors.kreative.orange.base.color, 7, 3, "bold"}
  return output
end
local function visualMode_c()
  local output = {colors.kreative.fg.auto.color, colors.kreative.purple.base.color, 7, 6, ""}
  return output
end
local function visualMode_b()
  local output = {colors.kreative.fg.auto.color, colors.kreative.blue.mix_shadow_bg.color, 7, 12, ""}
  return output
end
local function visualMode_a()
  local output = {colors.kreative.fg.auto.color, colors.kreative.red.base.color, 7, 1, "bold"}
  return output
end
local function insertMode_c()
  local output = {colors.kreative.fg.auto.color, ucolors.brighten(colors.kreative.blue.base.color, 0.2), 7, 4, ""}
  return output
end
local function insertMode_b()
  local output = {colors.kreative.fg.auto.color, colors.kreative.blue.mix_shadow_bg.color, 7, 12, ""}
  return output
end
local function insertMode_a()
  local output = {colors.kreative.fg.auto.color, colors.kreative.blue.base.color, 7, 4, "bold"}
  return output
end
local function terminalMode_c()
  local output = {colors.kreative.fg.auto.color, colors.kreative.red.match_bg.color, 7, 1, ""}
  return output
end
local function terminalMode_b()
  local output = {colors.kreative.fg.auto.color, colors.kreative.blue.mix_shadow_bg.color, 7, 12, ""}
  return output
end
local function terminalMode_a()
  local output = {colors.kreative.fg.auto.color, colors.kreative.pink.match_bg.color, 7, 13, "bold"}
  return output
end
local function inactiveGroup()
  local output = {colors.kreative.bg.base.color, colors.kreative.fg.shadow.color, 7, 8, ""}
  return output
end
local function warningGroup()
  local output = {colors.kreative.fg.auto.color, colors.kreative.red.match_bg.color, 7, 9, ""}
  return output
end
local function errorGroup()
  local output = {colors.kreative.fg.auto.color, colors.kreative.red.base.color, 7, 1, ""}
  return output
end
local function modifiedC(mode)
  local output = {}
  do
    local _2_ = mode
    if (_2_ == "normal") then
      output = {colors.kreative.fg.auto.color, "", 7, "", ""}
    elseif (_2_ == "insert") then
      output = {colors.kreative.fg.auto.color, "", 7, "", ""}
    elseif (_2_ == "replace") then
      output = {colors.kreative.fg.auto.color, "", 7, "", ""}
    elseif (_2_ == "visual") then
      output = {colors.kreative.fg.auto.color, "", 7, "", ""}
    elseif (_2_ == "inactive") then
      output = {colors.kreative.bg.base.color, "", 0, "", ""}
    else
    end
  end
  return output
end
return modifiedC