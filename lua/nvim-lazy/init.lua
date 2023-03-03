local M = {}

---@param opts? nvim-lazy Config
function M.setup(opts)
  require("nvim-lazy.config").setup(opts)
end

return M
