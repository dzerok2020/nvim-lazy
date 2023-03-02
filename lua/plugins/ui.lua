return {
	-- color scheme
	{
		"luisiacc/gruvbox-baby",
		lazy = true,
		config = function()
			require("user.gruvbox_baby")
		end,
	},
	-- dashboard
	{
		"goolord/alpha-nvim",
		-- event = "BufWinEnter",
		event = "VimEnter",
		config = function()
			require("user.alpha")
		end,
	},
	-- line info bootom
	{
		"nvim-lualine/lualine.nvim",
		-- dependencies = { "kyazdani42/nvim-web-devicons", opt = true },
		event = "BufWinEnter",
		config = function()
			local model = 0
			if model == 1 then
				require("user.lualine1")
			elseif model == 2 then
				require("user.lualine2")
			elseif model == 3 then
				require("user.lualine3")
			elseif model == 4 then
				require("user.lualine4")
			else
				require("user.lualine")
			end
		end,
	},
	-- for show icon
	{
		"kyazdani42/nvim-web-devicons",
		dependencies = { "DaikyXendo/nvim-material-icon" },
		event = "BufRead",
		config = function()
			require("user.webdevicons")
		end,
	},
	-- for tree exploler
	{
		"kyazdani42/nvim-tree.lua",
		-- event = "BufWinEnter",
		cmd = { "NvimTree", "NvimTreeToggle", "NvimTreeFocus", "NvimTreeClose" },
		-- dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("user.nvim-tree")
		end,
	},
	-- for file tab
	{
		"famiu/bufdelete.nvim",
		event = "BufRead",
	},
	{
		"akinsho/bufferline.nvim",
		event = "BufWinEnter",
		config = function()
			require("user.bufferline")
		end,
	},
	-- for delete buffers (close files) without closing your windows or messing up your layout.
	{ "moll/vim-bbye", event = "BufRead" },
	-- for view terminal
	{
		"akinsho/toggleterm.nvim",
		cmd = "Toggleterm",
		event = "BufWinEnter",
		init = function()
			require("user.toggleterm")
		end,
	},
	-- key mapping
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			require("user.whichkey")
		end,
	},
	-- for search
	{
		"nvim-telescope/telescope.nvim",
		-- event = "BufRead",
		-- dependencies = { { "nvim-lua/plenary.nvim" } },
		cmd = "Telescope",
		version = false, -- telescope did only one release, so use HEAD for now
		config = function()
			require("user.telescope")
		end,
	},

	-- custom
	-- color scheme
	{ "dracula/vim" },
	{
		"simrat39/symbols-outline.nvim",
		event = "BufRead",
		config = function()
			require("symbols-outline").setup()
		end,
	},
	{ "lunarvim/lunar.nvim" },
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		-- priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("user.tokyonight_transparant")
			require("user.colorscheme")
		end,
	},
}
