local function require_submodule(parent, child)
  local submodule = (parent and (parent .. '.') or '') .. child
  require(submodule)
end

local function table_contains(tab, item)
  for _, value in ipairs(tab) do
    if value == item then return true end
  end
  return false
end

local file_types = { 'file', 'link' }
local dir_types = { 'directory' }

local module = ... and tostring(...) or ''
local module_path = module:gsub('%.', '/')
local module_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', module_path)
for fname, ftype in vim.fs.dir(module_dir, { follow = true }) do
  if table_contains(dir_types, ftype) then
    local init_path = vim.fs.joinpath(module_dir, fname, 'init.lua')
    local f = io.open(init_path, 'r')
    if f then
      f:close()
      require_submodule(module, fname)
    end
  elseif table_contains(file_types, ftype) then
    if string.match(fname, '.*%.lua$') and fname ~= 'init.lua' then
      local submodule = fname:gsub('%.lua$', '')
      require_submodule(module, submodule)
    end
  end
end
