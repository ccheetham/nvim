---@param repo string The name of the repo
---@return string
function GitRepo(repo) return 'https://github.com/' .. repo end

---@param parent string The name of the parent module
---@param child string The name of the child module
---@return string
function SubModule(parent, child) return parent .. '.' .. child end
