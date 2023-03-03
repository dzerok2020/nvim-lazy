local M = {}

---@param opts? nvim-lazyConfig
function M.setup(opts)
  require("nvim-lazy.config").setup(opts)
end

return M
