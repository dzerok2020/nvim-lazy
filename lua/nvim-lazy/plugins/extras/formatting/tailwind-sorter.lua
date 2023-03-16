return {
	{
		"laytan/tailwind-sorter.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
		build = "cd formatter && npm i && npm run build",
		config = {},
		keys = {
			{ "<leader>cs", "<cmd>TailwindSort<cr>", desc = "Sorts classes in the current buffer" },
			{ "<leader>ct", "<cmd>TailwindSortOnSaveToggle<cr>", desc = "Toggles automatic sorting on save" },
		},
	},
}
