return {
	{
		"hrsh7th/cmp-cmdline",
		event = "BufWinEnter",
		config = function()
			require("user.cmdline")
		end,
	},
	{
		"folke/noice.nvim",
		event = "BufWinEnter",
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
		config = function()
			require("noice").setup({})
		end,
	},

	-- for auto complate commond mode
	-- {
	-- 	"gelguy/wilder.nvim",
	-- 	event = "BufWinEnter",
	-- 	config = function()
	-- 		local wilder = require("wilder")
	-- 		wilder.setup({ modes = { ":", "/", "?" } })
	-- 		wilder.set_option(
	-- 			"renderer",
	-- 			wilder.popupmenu_renderer({
	-- 				highlighter = wilder.basic_highlighter(),
	-- 				left = { " ", wilder.popupmenu_devicons() },
	-- 				right = { " ", wilder.popupmenu_scrollbar() },
	-- 			})
	-- 		)
	-- 	end,
	-- },
}
