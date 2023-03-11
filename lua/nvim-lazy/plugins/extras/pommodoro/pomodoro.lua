return {
	{
		"wthollingsworth/pomodoro.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {
			time_work = 25,
			time_break_short = 5,
			time_break_long = 20,
			timers_to_long_break = 4,
		},
		config = function(_, opts)
			require("pomodoro").setup(opts)
		end,
		keys = {
			{ "<leader>ps", "<cmd>PomodoroStart<cr>", desc = "Start Pommodoro" },
			{ "<leader>pc", "<cmd>PomodoroStatus<cr>", desc = "Stop Pommodoro" },
			{ "<leader>pS", "<cmd>PomodoroStop<cr>", desc = "Status Pommodoro" },
		},
	},
}
