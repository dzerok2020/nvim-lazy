require("nvim-lazy.config").init()

return {
	{ "folke/lazy.nvim", version = "*" },
	{ "dzerok2020/nvim-lazy", priority = 10000, lazy = false, config = true, cond = true, version = "*" },
}
