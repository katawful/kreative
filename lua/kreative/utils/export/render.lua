local _2afile_2a = "fnl/kreative/utils/export/render.fnl"
local _2amodule_name_2a = "kreative.utils.export.render"
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
local a, groups, main, message, _, _0 = autoload("kreative.aniseed.core"), autoload("kreative.highlights.main"), autoload("kreative.main"), autoload("kreative.utils.message.init"), nil, nil
_2amodule_locals_2a["a"] = a
_2amodule_locals_2a["groups"] = groups
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["message"] = message
_2amodule_locals_2a["_"] = _0
_2amodule_locals_2a["_"] = _0
local function get_groups(source)
  local output_string = ""
  for _1, v in pairs(require(source.path)["high-colors"]()) do
    if (type(v) == "function") then
      local current = {v()}
      output_string = string.format("%s\n  %s\n", output_string, a["pr-str"](current))
    else
      output_string = string.format("%s\n  %s\n", output_string, a.str(v))
    end
  end
  return output_string
end
_2amodule_locals_2a["get-groups"] = get_groups
local function internal_string(source)
  local old_version = main.configs.version
  local output_string = ""
  local _3_
  do
    local t_2_ = source
    if (nil ~= t_2_) then
      t_2_ = (t_2_).version
    else
    end
    _3_ = t_2_
  end
  if (_3_ ~= nil) then
    main.configs.version = source.version
    output_string = string.format("(if (= main.config.version \"%s\")\n      (values\n        %s\n        )", source.version, get_groups(source))
    main.configs.version = old_version
    output_string = string.format("%s\n      (values\n        %s\n        ))", output_string, get_groups(source))
    output_string = get_groups(source)
  else
  end
  return output_string
end
_2amodule_locals_2a["internal-string"] = internal_string
local function file_string__3efile_21(file, source)
  local file_name
  if (source.types == "none") then
    file_name = ("fnl/kreative/exported/" .. source.name .. "-" .. source.background .. "-" .. source.contrast .. ".fnl")
  else
    file_name = ("fnl/kreative/exported/" .. source.types .. "/" .. source.name .. "-" .. source.background .. "-" .. source.contrast .. ".fnl")
  end
  return a.spit(file_name, file)
end
_2amodule_locals_2a["file-string->file!"] = file_string__3efile_21
local function build_string__3efile_21(source, color, back)
  local source0 = source
  local contrast
  if (color == "kat.nwim") then
    contrast = "soft"
  else
    contrast = "hard"
  end
  local shade = back
  local output_string
  if (source0.types == "none") then
    output_string = string.format("(module kreative.exported.%s-%s-%s\n  {autoload {run kreative.utils.highlight.run\n             main kreative.main}})\n(defn render []\n [%s])\n(defn init [] (run.highlight$<-table (render)))", source0.name, shade, contrast, internal_string(source0))
  else
    output_string = string.format("(module kreative.exported.%s.%s-%s-%s\n  {autoload {run kreative.utils.highlight.run}})\n(defn render []\n [%s])\n(defn init [] (run.highlight$<-table (render)))", source0.types, source0.name, shade, contrast, internal_string(source0))
  end
  source0["contrast"] = contrast
  source0["background"] = shade
  return file_string__3efile_21(output_string, source0)
end
_2amodule_locals_2a["build-string->file!"] = build_string__3efile_21
local function start_group()
  local files = {{name = "main", path = "kreative.highlights.main", types = "none"}, {name = "syntax", path = "kreative.highlights.syntax", types = "none"}, {name = "cmp", path = "kreative.highlights.integrations.cmp", types = "integrations"}, {name = "coc", path = "kreative.highlights.integrations.coc", types = "integrations"}, {name = "fugitive", path = "kreative.highlights.integrations.fugitive", types = "integrations"}, {name = "indent_blankline", path = "kreative.highlights.integrations.indent_blankline", types = "integrations"}, {name = "lsp", path = "kreative.highlights.integrations.lsp", types = "integrations", version = "0.6"}, {name = "startify", path = "kreative.highlights.integrations.startify", types = "integrations"}, {name = "treesitter", path = "kreative.highlights.integrations.treesitter", types = "integrations"}, {name = "ts_rainbow", path = "kreative.highlights.integrations.ts_rainbow", types = "integrations"}, {name = "markdown", path = "kreative.highlights.filetype.markdown", types = "filetype"}, {name = "vim", path = "kreative.highlights.filetype.vim", types = "filetype"}, {name = "vimwiki", path = "kreative.highlights.filetype.vimwiki", types = "filetype"}}
  local colors = {{light = "kat.nwim"}, {light = "kat.nvim"}, {dark = "kat.nwim"}, {dark = "kat.nvim"}}
  local old_color = vim.g.colors_name
  local old_background = vim.o.background
  local old_dontRender = main.configs.render
  local old_version = main.configs.version
  main.configs.render = true
  for _1, v in ipairs(colors) do
    for back, color in pairs(v) do
      vim.g["colors_name"] = color
      vim.api.nvim_set_option("background", back)
      for _2, v1 in ipairs(files) do
        build_string__3efile_21(v1, color, back)
      end
    end
  end
  main.configs.version = old_version
  vim.g["colors_name"] = old_color
  vim.api.nvim_set_option("background", old_background)
  main.configs.render = old_dontRender
  return nil
end
_2amodule_locals_2a["start-group"] = start_group
local function init()
  if (vim.g.kat_nvim_compile_enable == true) then
    message["warn$"](message["<-table"]("utils.export.render", "compilation-dev"))
    if (main.configs.version == "0.6") then
      return vim.api.nvim_command("command! -nargs=0 KatNvimRenderFiles lua require('kreative.utils.export.render').start_group()")
    else
      local function _9_()
        return start_group()
      end
      return vim.api.nvim_create_user_command("KatNvimRenderFiles", _9_, {desc = "render colorscheme file"})
    end
  else
    return nil
  end
end
_2amodule_2a["init"] = init
return _2amodule_2a