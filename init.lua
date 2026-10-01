local function require_submodule(parent, child)
  local submodule = (parent and (parent .. '.') or '') .. child
  require(submodule)
end

local function is_submodule_dir(module, fname, ftype)
  if ftype == 'directory' then
    local init_path = vim.fs.joinpath(module, fname, 'init.lua')
    local f = io.open(init_path, 'r')
    if f then
      f:close()
      return true
    end
  end
  return false
end

local function is_lua_file(fname, ftype)
  if ftype == 'file' or type == 'link' then
    if string.match(fname, '.*%.lua$') then return fname ~= 'init.lua' end
  end
  return false
end

local module = ... and tostring(...) or ''
local module_path = module:gsub('%.', '/')
local module_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', module_path)
local sub_modules = {}
for fname, ftype in vim.fs.dir(module_dir, { follow = true }) do
  if is_lua_file(fname, ftype) then
    require_submodule(module, fname:gsub('%.lua$', ''))
  elseif is_submodule_dir(module_dir, fname, ftype) then
    table.insert(sub_modules, fname)
  end
end
for _, dirname in ipairs(sub_modules) do
  require_submodule(module, dirname)
end
