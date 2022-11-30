local _2afile_2a = "fnl/kreative/utils/options/init.fnl"
local _2amodule_name_2a = "kreative.utils.options.init"
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
local _ = nil
_2amodule_locals_2a["_"] = _
local function default_2a()
  vim.g["kat_nvim_commentStyle"] = "italic"
  vim.g["kat_nvim_stupidFeatures"] = false
  vim.g["kat_nvim_filetypes"] = {"vim", "vimwiki", "markdown"}
  vim.g["kat_nvim_integrations"] = {"treesitter", "lsp", "ts_rainbow", "indent_blankline", "startify", "coc", "cmp", "fugitive"}
  vim.g["kat_nvim_dontRender"] = false
  vim.g["kat_nvim_compile_enable"] = false
  return nil
end
_2amodule_2a["default*"] = default_2a
local function default(opts)
  local output = {}
  local _2_
  do
    local t_1_ = opts
    if (nil ~= t_1_) then
      t_1_ = (t_1_).integrations
    else
    end
    _2_ = t_1_
  end
  if _2_ then
    output.integrations = opts.integrations
  else
    output.integrations = {"treesitter", "lsp", "ts_rainbow", "indent_blankline", "startify", "coc", "cmp", "gitsigns", "fugitive"}
  end
  local _6_
  do
    local t_5_ = opts
    if (nil ~= t_5_) then
      t_5_ = (t_5_).filetypes
    else
    end
    _6_ = t_5_
  end
  if _6_ then
    output.filetypes = opts.filetypes
  else
    output.filetypes = {"vim", "vimwiki", "markdown"}
  end
  local _10_
  do
    local t_9_ = opts
    if (nil ~= t_9_) then
      t_9_ = (t_9_).comment_style
    else
    end
    _10_ = t_9_
  end
  if _10_ then
    output.comment_style = opts.comment_style
  else
    output.comment_style = {"italic"}
  end
  local _14_
  do
    local t_13_ = opts
    if (nil ~= t_13_) then
      t_13_ = (t_13_).render
    else
    end
    _14_ = t_13_
  end
  if _14_ then
    output.render = opts.render
  else
    output.render = true
  end
  if (vim.fn.has("nvim-0.7") == 0) then
    output.version = "0.6"
  else
    output.version = "0.7"
  end
  return output
end
_2amodule_2a["default"] = default
return _2amodule_2a