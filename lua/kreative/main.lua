local _2afile_2a = "fnl/kreative/main.fnl"
local _2amodule_name_2a = "kreative.main"
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
local colors, options, _ = autoload("kreative.color"), autoload("kreative.utils.options.init"), nil
_2amodule_locals_2a["colors"] = colors
_2amodule_locals_2a["options"] = options
_2amodule_locals_2a["_"] = _
local function init(in_contrast)
  options.default()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  else
  end
  if (vim.fn.exists("syntax_on") == 1) then
    vim.cmd("syntax reset")
  else
  end
  local contrast = in_contrast
  _2amodule_2a["contrast"] = contrast
  local background = vim.o.background
  _2amodule_2a["background"] = background
  if (contrast == "hard") then
    vim.g["colors_name"] = "kat.nvim"
  else
    vim.g["colors_name"] = "kat.nwim"
  end
  if (vim.g.kat_nvim_dontRender == true) then
    do end (require("kreative.highlights.main")).init()
    do end (require("kreative.highlights.syntax")).init()
    do end (require("kreative.highlights.terminal")).init()
    if (vim.g.kat_nvim_stupidFeatures == true) then
      do end (require("kreative.stupid")).stupidFunction()
    else
    end
    require("kreative.utils.export.init")
    do end (require("kreative.utils.export.render")).init()
    for _0, v in ipairs(vim.g.kat_nvim_integrations) do
      local output = ("kreative.highlights.integrations." .. v)
      require(output).init()
    end
    for _0, v in pairs(vim.g.kat_nvim_filetype) do
      local output = ("kreative.highlights.filetype." .. v)
      require(output).init()
    end
    return nil
  else
    do end (require(("kreative.exported.main-" .. background .. "-" .. contrast))).init()
    do end (require(("kreative.exported.syntax-" .. background .. "-" .. contrast))).init()
    do end (require("kreative.highlights.terminal")).init()
    if (vim.g.kat_nvim_stupidFeatures == true) then
      do end (require("kreative.stupid")).stupidFunction()
    else
    end
    require("kreative.utils.export.init")
    do end (require("kreative.utils.export.render")).init()
    for _0, v in ipairs(vim.g.kat_nvim_integrations) do
      local output = ("kreative.exported.integrations." .. v .. "-" .. background .. "-" .. contrast)
      require(output).init()
    end
    for _0, v in pairs(vim.g.kat_nvim_filetype) do
      local output = ("kreative.exported.filetype." .. v .. "-" .. background .. "-" .. contrast)
      require(output).init()
    end
    return nil
  end
end
_2amodule_2a["init"] = init
return _2amodule_2a