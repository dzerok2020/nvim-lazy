return {
	{
		"jackMort/pommodoro-clock.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {
			modes = {
				["work"] = { "POMMODORO", 25 },
				["short_break"] = { "SHORT BREAK", 5 },
				["long_break"] = { "LONG BREAK", 30 },
			},
			animation_duration = 300,
			animation_fps = 30,
			say_command = "spd-say -l en -t female3",
			sound = "voice", -- set to "none" to disable
		},
		config = function(_, opts)
			require("pommodoro-clock").setup(opts)
		end,
		keys = function()
			local function pc(func)
				return "<Cmd>lua require('pommodoro-clock')." .. func .. "<CR>"
			end
			return {
				{ "<leader>ps", pc('start("work")'), desc = "Start Pommodoro" },
				{ "<leader>pb", pc('start("short_break")'), desc = "Short Break" },
				{ "<leader>pl", pc('start("long_break")'), desc = "Long Break" },
				{ "<leader>pp", pc("toggle_pause()"), desc = "Toggle Pause" },
				{ "<leader>pc", pc("close()"), desc = "Close" },
			}
		end,
	},
}
