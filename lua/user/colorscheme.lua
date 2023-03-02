-- local colorscheme = "tokyonight"
-- local colorscheme = "gruvbox"
local colorscheme = "gruvbox-baby"
-- local colorscheme = "sonokai"
-- local colorscheme = "nordfox"
-- local colorscheme = "material"
-- local colorscheme = "onedark"
-- local colorscheme = "lunar"
-- local colorscheme = "nord"
-- local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
